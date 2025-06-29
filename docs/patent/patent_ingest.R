library(rvest)

# ---- STEP 1: Download HTML via wget ----
# Save to temp file
outfile <- tempfile(fileext = ".html")

# Run wget
# Add -q for quiet, -O to write to the outfile
system(sprintf(
  'wget -q "https://patents.google.com/patent/US10402588B2/en" -O %s',
  shQuote(outfile)
))

# ---- STEP 2: Read HTML into R ----
page <- read_html(outfile)






library(rvest)
library(stringr)
library(purrr)

# ---- STEP 1: Read local HTML ----
# path_to_file <- "en"  # your downloaded HTML file
html <- read_html(outfile)

# ---- STEP 2: Extract patent fields ----

# Title
title <- html %>%
  html_node("[itemprop=title]") %>%
  html_text(trim = TRUE)

# Abstract
abstract <- html %>%
  html_node("section[itemprop=abstract]") %>%
  html_text(trim = TRUE)

# Description
description <- html %>%
  html_node("section[itemprop=description]") %>%
  html_text(trim = TRUE)

# Claims
claims <- html %>%
  html_nodes("section[itemprop=claims]") %>%
  html_text(trim = TRUE)

# Handle possible missing elements
title <- ifelse(is.na(title), "", title)
abstract <- ifelse(is.na(abstract), "", abstract)
description <- ifelse(is.na(description), "", description)
claims <- if (length(claims) == 0) "" else paste(claims, collapse = "\n\n")
