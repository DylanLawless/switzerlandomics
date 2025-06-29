# We are also going to add the method to merge the original query csv header back to each result patent ID so that we can group by query content.

results <- readRDS("fto_reports/fto_results_all.rds")

# Example: show all patent IDs
names(results)

# Example: show the first markdown report
cat(results[[1]]$markdown_report)

# Example: summarise report lengths
summary_table <- data.frame(
  patent_id = names(results),
  report_length_chars = sapply(results, \(x) nchar(x$markdown_report))
)

print(summary_table)







# summary ----
library(stringr)
library(dplyr)

# Example empty list to store table rows
table_rows <- list()

for (i in seq_along(results)) {
  
  text <- results[[i]]$markdown_report
  
  # Extract publication number
  pub_no <- str_match(
    text,
    "- \\*\\*Publication No\\.:\\*\\*\\s*(.*?)\\n"
  )[,2]
  
  # Extract title
  title <- str_match(
    text,
    "- \\*\\*Title:\\*\\*\\s*(.*?)\\n"
  )[,2]
  
  # Extract conclusion
  concl <- str_match(
    text,
    "#### Conclusion\\s*\\n\\n(.*?)\\n"
  )[,2]
  
  table_rows[[i]] <- data.frame(
    reference = i,
    publication_no = pub_no,
    title = title,
    conclusion = concl,
    stringsAsFactors = FALSE
  )
}

# Combine into data frame
fto_table <- bind_rows(table_rows)

# Show table
print(fto_table
      )











# Add simple flag
fto_table <- fto_table %>%
  mutate(
    blocking_flag = case_when(
      str_detect(conclusion, "Not blocking") ~ "Not blocking",
      str_detect(conclusion, "Potential overlap") ~ "Potential overlap",
      TRUE ~ "Other"
    )
  )

print(fto_table)

# plot ----
library(ggplot2)

# Basic bar plot
ggplot(fto_table, aes(x = blocking_flag)) +
  geom_bar(fill = "steelblue") +
  labs(
    title = "FTO Conclusions",
    x = "Conclusion",
    y = "Number of patents"
  ) +
  theme_minimal()

