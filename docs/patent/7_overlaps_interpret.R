library(dplyr)
library(stringr)
library(jsonlite)

# Load results
results <- readRDS("fto_reports/fto_results_all.rds")

# Extract publication_no, title, conclusion
table_rows <- list()

for (i in seq_along(results)) {
  text <- results[[i]]$markdown_report
  
  pub_no <- str_match(
    text,
    "- \\*\\*Publication No\\.:\\*\\*\\s*(.*?)\\n"
  )[,2]
  
  title <- str_match(
    text,
    "- \\*\\*Title:\\*\\*\\s*(.*?)\\n"
  )[,2]
  
  concl <- str_match(
    text,
    "#### Conclusion\\s*\\n\\n(.*?)\\n"
  )[,2]
  
  table_rows[[i]] <- data.frame(
    patent_id = names(results)[i],
    publication_no = pub_no,
    title = title,
    conclusion = concl,
    stringsAsFactors = FALSE
  )
}

fto_table <- bind_rows(table_rows)

# Add flag
fto_table <- fto_table %>%
  mutate(
    blocking_flag = case_when(
      str_detect(conclusion, "Not blocking") ~ "Not blocking",
      str_detect(conclusion, "Potential overlap") ~ "Potential overlap",
      TRUE ~ "Other"
    )
  )

# Filter only potential overlap
potential_overlap_ids <- fto_table %>%
  filter(blocking_flag == "Potential overlap") %>%
  pull(patent_id)

# Extract reports
potential_overlap_reports <- results[potential_overlap_ids]

# Save markdowns
dir.create("potential_overlap_reports", showWarnings = FALSE)

for (pid in names(potential_overlap_reports)) {
  cat(
    potential_overlap_reports[[pid]]$markdown_report,
    file = file.path("potential_overlap_reports", paste0(pid, ".md"))
  )
}

# Create JSON payloads for API
payloads <- lapply(potential_overlap_reports, \(x) {
  list(
    publication_no = x$publication_no,
    title = x$title,
    report_text = x$markdown_report
  )
})

write_json(payloads, "potential_overlap_reports/potential_overlap_payloads.json", pretty = TRUE)

# Save table
fto_table %>%
  filter(blocking_flag == "Potential overlap") %>%
  write.csv("potential_overlap_reports/potential_overlap_table.csv", row.names = FALSE)


# send query ----

library(httr)

# -------------------------------
# Combine all markdown reports
# -------------------------------

# Concatenate all reports
combined_reports <- sapply(
  potential_overlap_reports,
  \(x) x$markdown_report
) |> paste(collapse = "\n\n---\n\n")


# -------------------------------
# Build the joint prompt
# -------------------------------

joint_prompt <- paste0(
  "You are preparing the Methods and Discussion sections of a Nature Genetics manuscript about our proprietary variant interpretation technology.\n\n",
  "Below are multiple patent reports, each of which was flagged as having potential overlap with our technology in a freedom-to-operate (FTO) analysis.\n\n",
  "Please provide a single, joint technical and legal assessment of whether and how these patents might overlap with our technology. ",
  "Be detailed in explaining any similarities or differences in variant interpretation pipelines, algorithms, statistical methods, data structures, or clinical workflows. ",
  "Assume that our technology is proprietary, uses modern statistical and Bayesian frameworks, and is not identical to any prior art unless clearly indicated. ",
  "Discuss whether any of these patents could block our freedom to operate, citing specific technical reasons for overlap or non-overlap.\n\n",
  "Write your response in the style of a Nature Genetics article, suitable for inclusion in a methods or discussion section. ",
  "Be precise, technical, and rigorous, avoiding marketing language. ",
  "Your analysis should:\n",
  "- Identify any patents whose claims might cover key aspects of our technology.\n",
  "- Explain how our approach differs technically from conventional variant scoring tools.\n",
  "- Provide a reasoned legal and technical conclusion about our freedom to operate.\n\n",
  "Here is our technology description:\n\n",
  "----------------------------------------\n",
  "Technology: Quant — a genome-wide variant probability platform\n\n",
  "Quant is a software framework designed to quantify prior probabilities for disease-causing genetic variants across all human genes and inheritance modes.\n\n",
  "## Purpose\n\n",
  "- Estimate the probability that any given variant in the genome is disease-causing.\n",
  "- Provide clinicians and researchers with numerical risk values (credible intervals) for variant interpretation, diagnosis, and population-level analyses.\n",
  "- Integrate both observed data (e.g. variants seen in a patient) and unobserved data (possible false negatives) to derive the confidence of a genetic diagnosis.\n\n",
  "## Commonality vs. Novelty\n\n",
  "Many genetic analysis companies produce variant scoring tools or pathogenicity classifiers. These tools often rely on public datasets such as:\n",
  "- gnomAD (population allele frequencies)\n",
  "- ClinVar (clinical variant classifications)\n",
  "- UniProt or dbNSFP (functional annotations)\n",
  "- Emerging predictors like AlphaMissense\n\n",
  "Thus, patents in this field often appear similar, mentioning:\n",
  "- Variant classification scores\n",
  "- Use of population frequencies\n",
  "- Machine learning models for pathogenicity\n",
  "- Clinical variant databases\n\n",
  "However, these systems often focus only on:\n",
  "- Predicting whether a variant might be pathogenic (classification)\n",
  "- Building classifiers that output a label (pathogenic, benign, uncertain)\n\n",
  "**Quant’s core novelty lies elsewhere.**\n\n",
  "Quant does NOT merely predict variant pathogenicity labels. Instead, Quant’s key innovation is:\n",
  "- Calculating genome-wide prior probabilities of observing pathogenic variants in each gene under Hardy-Weinberg Equilibrium.\n",
  "- Integrating these priors with observed or missing variant data from a patient’s genome.\n",
  "- Deriving a Bayesian posterior probability that a patient truly carries a disease-causing variant, even accounting for potential false negatives or unsequenced regions.\n",
  "- Providing a credible interval for diagnostic certainty.\n\n",
  "This means Quant does not just “score variants” but quantifies the **confidence** of a complete genetic diagnosis, which is rarely addressed in conventional tools.\n\n",
  "## Data Inputs\n\n",
  "- Variant-level population allele frequencies (e.g. gnomAD v4)\n",
  "- Clinical variant classifications (e.g. ClinVar)\n",
  "- PanelApp gene–disease panels for inheritance modes\n",
  "- Functional annotations (e.g. UniProt, dbNSFP, AlphaMissense)\n",
  "- Patient-level variant calls (VCF or gVCF)\n\n",
  "## Processing Steps\n\n",
  "1. For each variant:\n",
  "   - Read allele frequency.\n",
  "   - Read variant classification (if available).\n",
  "   - Determine mode of inheritance (autosomal dominant, autosomal recessive, or X-linked) for the gene via PanelApp.\n",
  "   - Compute occurrence probability under Hardy-Weinberg Equilibrium.\n",
  "2. Aggregate variant-level probabilities into gene-level probabilities.\n",
  "3. In clinical cases:\n",
  "   - Integrate observed true positives (TP).\n",
  "   - Assess the probability of unobserved false negatives (FN).\n",
  "   - Consider all outcomes: TP, FP, TN, FN.\n",
  "4. Compute a Bayesian posterior probability that a patient harbours a pathogenic variant causally linked to disease.\n",
  "5. Produce reports with:\n",
  "   - Variant-level and gene-level probabilities\n",
  "   - Disease-specific risk estimates\n",
  "   - Uncertainty ranges (credible intervals)\n\n",
  "## Outputs\n\n",
  "- Variant-level and gene-level disease probabilities (prior and posterior)\n",
  "- Tables ranking disease genes by expected observation probability\n",
  "- Reports summarising likelihood of genetic diagnosis and uncertainty bounds\n\n",
  "## Intended Use\n\n",
  "- Clinical genetic diagnostics (rare disease, primary immunodeficiencies, etc.)\n",
  "- Variant interpretation support for clinical genetics\n",
  "- Statistical studies of disease burden\n",
  "- Drug target prioritisation in pharmacogenomics\n\n",
  "## Unique Innovations\n\n",
  "- Uses Bayesian models to integrate prior probabilities with patient-specific evidence.\n",
  "- Explicitly quantifies false negative probabilities for unsequenced or poorly sequenced regions.\n",
  "- Models mode of inheritance impacts on variant observation probability.\n",
  "- Provides actionable credible intervals reflecting diagnostic certainty.\n",
  "- Scalable to genome-wide analyses and all inheritance modes.\n\n",
  "In summary, Quant shifts the focus from merely predicting pathogenicity to **quantifying how likely it is to observe disease-causing variants across the entire genome** — and how certain a diagnosis truly is. This differentiates Quant from standard variant scoring tools that rely on the same public datasets but stop at classification or risk prediction.\n\n",
  "----------------------------------------\n\n",
  "Below are the patent reports flagged for potential overlap:\n\n",
  combined_reports
)



# -------------------------------
# Send to OpenAI API
# -------------------------------

library(httr)
library(jsonlite)
library(stringr)

# Read our OpenAI API key from desktop file
api_key <- readLines("/Users/dylanlawless/Desktop/switzerlandomics_api_key.txt", warn = FALSE) |> str_trim()

# Prepare payload
payload <- list(
  # model = "gpt-4o",
  model = "gpt-4.1-mini",

  messages = list(
    list(
      role = "system",
      content = "You are an expert in genomics, bioinformatics, patent analysis and legal FTO evaluation."
    ),
    list(
      role = "user",
      content = joint_prompt
    )
  )#,
  # temperature = 0.3
)

# Ensure output directory exists
# dir.create("potential_overlap_reports", showWarnings = FALSE)

# Call the API with error handling
res <- try(
  POST(
    url = "https://api.openai.com/v1/chat/completions",
    add_headers(
      Authorization = paste("Bearer", api_key),
      `Content-Type` = "application/json"
    ),
    body = toJSON(payload, auto_unbox = TRUE)
  ),
  silent = TRUE
)

if (inherits(res, "try-error")) {
  stop("❌ API call failed due to connection or server error.")
}

# Check API response status
if (res$status_code != 200) {
  parsed_error <- try(content(res, as = "parsed"), silent = TRUE)
  msg <- if (!inherits(parsed_error, "try-error") && !is.null(parsed_error$error$message)) {
    parsed_error$error$message
  } else {
    "Unknown error."
  }
  stop("❌ OpenAI API request failed with status code ", res$status_code, ": ", msg)
}

# Extract result text
parsed <- content(res, as = "parsed")

if (!is.null(parsed$error)) {
  stop("❌ API error: ", parsed$error$message)
}

result_text <- parsed$choices[[1]]$message$content

# Save result
outfile <- file.path("potential_overlap_reports", "joint_nature_genetics_analysis.txt")

writeLines(result_text, outfile)

message("✅ Joint Nature Genetics analysis saved to: ", outfile)
