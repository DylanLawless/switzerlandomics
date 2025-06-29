# fto_extract.R

# Formatting function

library(rvest)
library(stringr)
library(dplyr)

sanitize_text <- function(x) {
  x <- str_replace_all(x, "[\r\n]", " ")
  x <- str_replace_all(x, "\t", " ")
  x <- str_replace_all(x, "\"", "'")
  str_squish(x)
}

is_google_error_page <- function(html) {
  text <- html_text(html)
  grepl("We're sorry", text, fixed = TRUE)
}

extract_patent_data <- function(url) {
  outfile <- tempfile(fileext = ".html")
  
  # Download the page quietly
  system(sprintf(
    'wget -q "%s" -O %s',
    url,
    shQuote(outfile)
  ))
  
  html <- read_html(outfile)
  
  # Check for Google error page
  if (is_google_error_page(html)) {
    message("Google blocking detected for URL: ", url)
    return(c(
      "## Patent Reference",
      "",
      paste0("- URL: ", url),
      "",
      "Google blocking message detected. No data extracted."
    ))
  }
  
  get_text_safe <- function(html, selector) {
    node <- html_node(html, selector)
    if (is.null(node)) {
      return(NA_character_)
    } else {
      return(html_text(node, trim = TRUE))
    }
  }
  
  title <- get_text_safe(html, "[itemprop=title]")
  abstract <- get_text_safe(html, "section[itemprop=abstract]")
  description <- get_text_safe(html, "section[itemprop=description]")
  claims_text <- get_text_safe(html, "section[itemprop=claims]")
  
  claims_final <- if (is.na(claims_text)) "(No claims found)" else sanitize_text(claims_text)
  
  text_lines <- c(
    "## Patent Reference",
    "",
    paste0("- Title: ", sanitize_text(title)),
    paste0("- URL: ", url),
    "",
    "### Abstract",
    "",
    sanitize_text(abstract),
    "",
    "### Description",
    "",
    sanitize_text(description),
    "",
    "### Claims",
    "",
    claims_final
  )
  
  return(text_lines)
}
