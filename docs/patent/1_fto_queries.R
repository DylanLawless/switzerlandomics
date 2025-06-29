# 1_fto_queries
# 
# We define our queries and use Google patent. Note the sleep time of 5-10. This tens to get blocked temporarily if too fast. A longer wait may alow continuous use but we good all our results with this in two batches.

library(httr)
library(tibble)

dir.create("searches", showWarnings = FALSE)

queries <- tibble::tibble(
  topic = c(
    "variant interpretation algorithms",
    "Bayesian variant interpretation",
    "disease probability estimation",
    "Hardy-Weinberg",
    "prior probabilities in genomics",
    "variant frequency models",
    "variant simulation models",
    "variant pathogenicity + machine learning",
    "gene panels and variant scoring",
    "causality estimation in genomics", 
    "probabilistic frameworks in genomics",
    "clinical genetics software",
    "Hardy-Weinberg + diagnosis",
    "Bayesian gene panel integration",
    "Compound heterozygosity disease risk",
    "Population frequency Bayesian",
    "False negatives genetic diagnosis",
    "Genome-wide Bayesian priors",
    "Confusion matrix and Bayesian variant interpretation"
  ),
  url = c(
    "https://patents.google.com/?q=%22variant+interpretation%22+OR+%22variant+classification%22+OR+%22variant+scoring%22+OR+%22variant+annotation%22+OR+%22variant+pathogenicity%22+OR+%22genetic+variant+scoring%22",
    "https://patents.google.com/?q=%22bayesian%22+AND+%28%22variant+interpretation%22+OR+%22variant+classification%22+OR+%22genomic+diagnosis%22%29",
    "https://patents.google.com/?q=%22genetic+diagnosis%22+AND+%28%22disease+probability%22+OR+%22variant+probability%22+OR+%22variant+occurrence+probability%22+OR+%22disease+likelihood%22%29",
    "https://patents.google.com/?q=%22Hardy-Weinberg%22+AND+%28%22genetic+variant%22+OR+%22genetic+diagnosis%22+OR+%22genetic+analysis%22%29",
    "https://patents.google.com/?q=%22prior+probability%22+AND+%28%22genetic+variant%22+OR+%22genome-wide%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%22allele+frequency%22+AND+%28%22disease+probability%22+OR+%22variant+scoring%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%28%22beta+distribution%22+OR+%22beta-binomial%22+OR+%22simulation%22%29+AND+%28%22genetic+variant%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%22variant+pathogenicity%22+AND+%28%22machine+learning%22+OR+%22deep+learning%22+OR+%22artificial+intelligence%22%29",
    "https://patents.google.com/?q=%22gene+panel%22+AND+%28%22variant+scoring%22+OR+%22variant+pathogenicity%22%29",
    "https://patents.google.com/?q=%22causal+variant%22+AND+%28%22probability+estimation%22+OR+%22variant+scoring%22+OR+%22variant+interpretation%22%29",
    "https://patents.google.com/?q=%22probabilistic+framework%22+AND+%28%22genomic+diagnosis%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%22clinical+genetics%22+AND+%28%22software%22+OR+%22algorithm%22+OR+%22pipeline%22+OR+%22system%22%29",
    # New precise queries
    "https://patents.google.com/?q=%22Hardy-Weinberg%22+AND+%28%22disease+probability%22+OR+%22genomic+diagnosis%22+OR+%22variant+interpretation%22%29",
    "https://patents.google.com/?q=%22Bayesian%22+AND+%28%22gene+panel%22+OR+%22variant+interpretation%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%22compound+heterozygosity%22+AND+%28%22disease+probability%22+OR+%22genetic+diagnosis%22%29",
    "https://patents.google.com/?q=%22population+allele+frequency%22+AND+%28%22Bayesian%22+OR+%22genomic+diagnosis%22%29",
    "https://patents.google.com/?q=%22false+negatives%22+AND+%28%22genomic+diagnosis%22+OR+%22variant+interpretation%22%29",
    "https://patents.google.com/?q=%22genome-wide%22+AND+%28%22variant+classification%22+OR+%22disease+probability%22%29+AND+%22Bayesian%22",
    "https://patents.google.com/?q=%28%22Bayesian%22+OR+%22probabilistic+framework%22%29+AND+%28%22true+positive%22+OR+%22false+positive%22+OR+%22confusion+matrix%22%29+AND+%28%22variant+interpretation%22+OR+%22variant+classification%22+OR+%22genomic+diagnosis%22%29"
  )
)

print(queries)

browseURL(queries$url[1]) # About 3,331 results
browseURL(queries$url[2]) # About 109 results
browseURL(queries$url[3]) # About 15 results
browseURL(queries$url[4]) # About 4,720 results
browseURL(queries$url[5]) # About 323 results
browseURL(queries$url[6]) # About 713 results
browseURL(queries$url[7]) # About 1,584 results
browseURL(queries$url[8]) # this is not relavant to us `About 108 results`
browseURL(queries$url[9]) # About 16 results
browseURL(queries$url[10]) # About 11 results
browseURL(queries$url[11]) # About 3 results
browseURL(queries$url[12]) # About 1,295 results
browseURL(queries$url[13]) # About 13 results
browseURL(queries$url[14]) # About 820 results
browseURL(queries$url[15]) # About 25 results
browseURL(queries$url[16]) # About 112 results
browseURL(queries$url[17]) # About 24 results
browseURL(queries$url[18]) 
browseURL(queries$url[19]) # About 57 results

queries <- head(queries)
# 
# # automating this is likely to get our IP blocked by google:
# for (i in seq_len(nrow(queries))) {
#   query_url <- queries$url[i]
#   
#   # Extract the q=... part
#   query_string <- sub(".*\\?q=", "", query_url)
#   
#   # Compose the xhr download URL
#   download_url <- paste0(
#     "https://patents.google.com/xhr/query?url=q%3D",
#     URLencode(query_string, reserved = TRUE),
#     "&download=true"
#   )
#   
#   # Create filename
#   outfile <- file.path(
#     "searches",
#     sprintf("gp-search-%02d.csv", i)
#   )
#   
#   cat("Downloading:\n", queries$topic[i], "\nURL:", download_url, "\n\n")
#   
#   # Download
#   res <- try(
#     GET(download_url, write_disk(outfile, overwrite = TRUE)),
#     silent = TRUE
#   )
#   
#   if (inherits(res, "try-error")) {
#     cat("Error occurred. Skipping query.\n")
#   } else {
#     cat("Saved to:", outfile, "\n")
#   }
#   
#   # Sleep randomly between 40 and 150 seconds
#   delay <- runif(1, min = 40, max = 150)
#   cat("Sleeping for", round(delay, 1), "seconds...\n\n")
#   Sys.sleep(delay)
# }
# 


# This assumes you have your 'queries' tibble already loaded

for (i in seq_len(nrow(queries))) {
# for (i in 19) {
  query_url <- queries$url[i]
  
  # Extract the q=... part
  query_string <- sub(".*\\?q=", "", query_url)
  
  # Compose the xhr download URL
  download_url <- paste0(
    "https://patents.google.com/xhr/query?url=q%3D",
    URLencode(query_string, reserved = TRUE),
    "&download=true"
  )
  
  cat("Opening download for:\n", queries$topic[i], "\nURL:", download_url, "\n\n")
  
  # Open in default browser
  browseURL(download_url)
  
  # Optional sleep to avoid too many windows popping at once
  delay <- runif(1, min = 5, max = 10)
  cat("Sleeping for", round(delay, 1), "seconds...\n\n")
  Sys.sleep(delay)
}
