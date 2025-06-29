source("fto_queries.R")

# Open your searches:
for (u in queries$url) {
  browseURL(u)
}

# Download CSVs manually from Google Patents UI

source("fto_sources.R")

# Extract patent text
source("fto_gather.R")
