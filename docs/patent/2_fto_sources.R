# fto_sources.R

# Some quries were very lose and have hudreds to thousands of hits. We reduce to max 100 for focus on specific claims in this niche field since most variant interpretation patents are otherwise hihgly similar. 
# This gathers all the query results from csv files and merges the patnet URLs into a single list.

library(readr)
library(dplyr)

# set your row limit
max_rows <- 100

# List your CSV result files
csv_files <- list.files(
  path = "searches",
  pattern = "\\.csv$",
  full.names = TRUE
)

all_patent_urls <- character()

# Loop through files
for (csv_file in csv_files) {
  # Read all lines first
  all_lines <- readLines(csv_file)
  
  # The first line is your search query URL
  search_query <- all_lines[1]
  cat("Search query from file:", csv_file, "\n", search_query, "\n\n")
  
  # Check number of rows (excluding the first line)
  num_data_rows <- length(all_lines) - 1
  
  if (num_data_rows <= max_rows) {
    # Read the data, skipping line 1
    patents <- read_csv(csv_file, skip = 1, show_col_types = FALSE)
    
    # Extract URLs
    patent_urls <- patents %>%
      filter(!is.na(`result link`)) %>%
      pull(`result link`)
    
    all_patent_urls <- c(all_patent_urls, patent_urls)
  } else {
    cat("Skipping file due to row count >", max_rows, ":", csv_file, "\n\n")
  }
}

# Remove duplicates
all_patent_urls <- unique(all_patent_urls)

# Write out final list
writeLines(all_patent_urls, "searches/patent_urls.txt")

cat("Total unique patent URLs:", length(all_patent_urls), "\n")
