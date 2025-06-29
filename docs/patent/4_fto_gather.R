
# 4_fto_gather.R

# Here we take the list of URLs for patents related to our terms
# then download the full html for each one to the patent_corpus dir.
# Note that sleep of 5-15 so far prevents the IP address from being blocked by Google.


library(stringr)
source("3_fto_extract.R")

patent_urls <- readLines("searches/patent_urls.txt")

dir.create("patent_corpus", showWarnings = FALSE)

for (url in patent_urls) {
  cat("Processing:", url, "\n")
  Sys.sleep(runif(1, 5, 15))  # random pause
  
  text_lines <- extract_patent_data(url)
  
  patent_id <- url %>%
    str_extract("patent/([^/]+)") %>%
    str_replace_all("/", "_")
  
  outfile <- file.path("patent_corpus", paste0(patent_id, ".txt"))
  
  writeLines(text_lines, outfile)
}


