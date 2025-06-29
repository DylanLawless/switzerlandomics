# 5_fto_analysis.R

# Send each patent from the corpus to our OpenAI API with the detailed FTO analysis template and store the responses. 

# Load required libraries
library(httr)
library(jsonlite)
library(stringr)

# Read your OpenAI API key from desktop file
api_key <- readLines("/Users/dylanlawless/Desktop/switzerlandomics_api_key.txt", warn = FALSE) |> str_trim()

# Create output folder if needed
dir.create("fto_reports", showWarnings = FALSE)

# Load patent text files
files <- list.files("patent_corpus", full.names = TRUE)

# Keep only files, exclude directories
files <- files[!file.info(files)$isdir]

# files <- files[1:2]

# Prepare empty list to collect all results
all_fto_results <- list()

# Loop through each patent
for (f in files) {
  
  cat("Processing:", f, "\n")
  
  # Read patent text
  txt <- readLines(f, warn = FALSE) |> paste(collapse = "\n")
  
  # Prepare technology description
  tech_description <- "
Technology: Quant — a genome-wide variant probability platform

Quant is a software framework designed to quantify prior probabilities for disease-causing genetic variants across all human genes and inheritance modes.

## Purpose

- Estimate the probability that any given variant in the genome is disease-causing.
- Provide clinicians and researchers with numerical risk values (credible intervals) for variant interpretation, diagnosis, and population-level analyses.
- Integrate both observed data (e.g. variants seen in a patient) and unobserved data (possible false negatives) to derive the confidence of a genetic diagnosis.

## Commonality vs. Novelty

Many genetic analysis companies produce variant scoring tools or pathogenicity classifiers. These tools nearly always rely on the same public datasets, such as:
- gnomAD (population allele frequencies)
- ClinVar (clinical variant classifications)
- UniProt or dbNSFP (functional annotations)
- Emerging predictors like AlphaMissense

Thus, patents in this field often appear very similar, mentioning:
- Variant classification scores
- Use of population frequencies
- Machine learning models for pathogenicity
- Clinical variant databases

However, these systems often focus only on:
- Predicting whether a variant might be pathogenic (classification)
- Building classifiers that output a label (pathogenic, benign, uncertain)

**Quant’s core novelty lies elsewhere.**

Quant does NOT merely predict variant pathogenicity labels. Instead, Quant’s key innovation is:
- Calculating genome-wide prior probabilities of **observing** pathogenic variants in each gene under Hardy-Weinberg Equilibrium.
- Integrating these priors with observed or missing variant data from a patient’s genome.
- Deriving a Bayesian posterior probability that a patient truly carries a disease-causing variant, even accounting for potential false negatives or unsequenced regions.
- Providing a credible interval for diagnostic certainty.

This means Quant does not just “score variants” but quantifies the **confidence** of a complete genetic diagnosis, which is rarely addressed in conventional tools.

## Data Inputs

- Variant-level population allele frequencies (e.g. gnomAD v4)
- Clinical variant classifications (e.g. ClinVar: pathogenic, benign)
- PanelApp gene–disease panels for inheritance modes
- Functional annotations (e.g. UniProt, dbNSFP, AlphaMissense)
- Patient-level variant calls (VCF or gVCF)

## Processing Steps

1. For each variant:
   - Read allele frequency.
   - Read variant classification (if available).
   - Determine mode of inheritance (autosomal dominant, autosomal recessive, or X-linked) for the gene via PanelApp.
   - Compute occurrence probability under Hardy-Weinberg Equilibrium.
2. Aggregate variant-level probabilities into gene-level probabilities.
3. In clinical cases:
   - Integrate observed true positives (TP).
   - Assess the probability of unobserved false negatives (FN).
   - Consider all outcomes: TP, FP, TN, FN.
4. Compute a Bayesian posterior probability that a patient harbours a pathogenic variant causally linked to disease.
5. Produce reports with:
   - Variant-level and gene-level probabilities
   - Disease-specific risk estimates
   - Uncertainty ranges (credible intervals)

## Outputs

- Variant-level and gene-level disease probabilities (prior and posterior).
- Tables ranking disease genes by expected observation probability.
- Reports summarising likelihood of genetic diagnosis and uncertainty bounds.

## Intended Use

- Clinical genetic diagnostics (rare disease, primary immunodeficiencies, etc.)
- Variant interpretation support for clinical genetics.
- Statistical studies of disease burden.
- Drug target prioritisation in pharmacogenomics.

## Unique Innovations

- Uses Bayesian models to integrate prior probabilities with patient-specific evidence.
- Explicitly quantifies false negative probabilities for unsequenced or poorly sequenced regions.
- Models mode of inheritance impacts on variant observation probability.
- Provides actionable credible intervals reflecting diagnostic certainty.
- Scalable to genome-wide analyses and all inheritance modes.

In summary, Quant shifts the focus from merely predicting pathogenicity to **quantifying how likely it is to observe disease-causing variants across the entire genome** — and how certain a diagnosis truly is. This differentiates Quant from standard variant scoring tools that rely on the same public datasets but stop at classification or risk prediction.
"
  
  # Prepare instructions
  instructions <- "
You are a patent analyst preparing a Freedom-to-Operate (FTO) analysis.

The end goal is to assess for potential overlap but yo bo so it must really be very similar to the idea of using TP and FN etc rather than simply using a Bayesian method and have very close resomblance to the theory of our method rather than using similar terms.

For each patent or publication provided, produce a report section using the following template:

## Patent/Publication Analysis

### Reference #N

- **Title:** [Insert Title]
- **Publication No.:** [e.g. US20XX/XXXXXXX]
- **Publication Date:** [YYYY-MM-DD]
- **Link:** [URL]

#### Abstract (excerpt)

> \"[Quote a relevant abstract excerpt here]\"

#### Relevant Overlaps

- List any technical methods or concepts in the patent that overlap or resemble parts of Quant.

#### Key Differences

- List key differences showing why the patent is not blocking, if applicable.

#### Conclusion

Provide one of:
- \"Not blocking for Quant.\"
- \"Potential overlap — recommend legal review.\"

---

**Rules for the report:**

- Be precise and concise.
- Highlight specific sections or claims in the patent if relevant.
- Focus on technical overlap, not superficial similarity.
- Remember that many genomic patents mention the same public databases (e.g. gnomAD, ClinVar) or general variant scoring approaches.
- Quant’s unique feature is integrating prior probabilities with observed/missing variant data to generate a Bayesian posterior probability of a complete genetic diagnosis.
- To qualify as a Potential overlap it must really be very similar to the idea of using TP and FN etc rather than simply using a Bayesian method.
- If no overlap exists, briefly explain why.
- Don't offer legal warnings about getting it professionally checked as we already know.
- Output the entire report in markdown.
"
  
  # Combine prompt text
  prompt <- paste(
    instructions,
    "\n\n",
    "Technology description:\n",
    tech_description,
    "\n\n",
    "Patent text:\n",
    txt
  )
  
  # Prepare JSON body for API request
  body <- list(
    model = "gpt-4.1-mini",
    messages = list(
      list(
        role = "system",
        content = "You are a helpful patent analyst."
      ),
      list(
        role = "user",
        content = prompt
      )
    )
  )
  
  # Make the API request
  res <- try(
    POST(
      url = "https://api.openai.com/v1/chat/completions",
      add_headers(
        `Content-Type` = "application/json",
        Authorization = paste("Bearer", api_key)
      ),
      body = toJSON(body, auto_unbox = TRUE)
    ),
    silent = TRUE
  )
  
  if (inherits(res, "try-error")) {
    cat("❌ Error calling API for:", f, "\n")
    next
  }
  
  # Parse the API response
  parsed <- content(res, as = "parsed")
  
  if (!is.null(parsed$error)) {
    cat("❌ API error for:", f, "\n")
    cat(parsed$error$message, "\n")
    next
  }
  
  # # Extract the response text
  # output_text <- parsed$choices[[1]]$message$content
  # 
  # # Save Markdown report
  # patent_id <- str_replace(basename(f), "\\.txt$", "")
  # outfile <- file.path("fto_reports", paste0("report_", patent_id, ".md"))
  # writeLines(output_text, outfile)
  # 
  # # Save to results list
  # all_fto_results[[patent_id]] <- list(
  #   file = f,
  #   patent_id = patent_id,
  #   markdown_report = output_text,
  #   api_response_raw = parsed
  # )
  # 
  # cat("✅ Saved report to:", outfile, "\n\n")
  # 
  # # Sleep briefly between requests
  # Sys.sleep(2)
  
  
  # Extract the response text
  output_text <- parsed$choices[[1]]$message$content
  
  # Generate patent ID
  patent_id <- str_replace(basename(f), "\\.txt$", "")
  
  # Save Markdown report
  outfile <- file.path("fto_reports", paste0("report_", patent_id, ".md"))
  writeLines(output_text, outfile)
  
  # Build result object
  result_object <- list(
    file = f,
    patent_id = patent_id,
    markdown_report = output_text,
    api_response_raw = parsed
  )
  
  # Save result object as individual RDS
  rds_file <- file.path("fto_reports", paste0("report_", patent_id, ".rds"))
  saveRDS(result_object, file = rds_file)
  
  # Add result to combined results list
  all_fto_results[[patent_id]] <- result_object
  
  cat("✅ Saved report to:", outfile, "\n")
  cat("✅ Saved RDS to:", rds_file, "\n\n")
  
  # Sleep briefly between requests
  Sys.sleep(2)
  
  
  
}

# Save all results to RDS
saveRDS(all_fto_results, file = "fto_reports/fto_results_all.rds")
cat("✅ All done! Results saved to fto_reports/fto_results_all.rds\n")
