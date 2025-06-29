fto_queries.R - searches google patents for each set of queries and download results.
fto_sources.R - from the csv results, get the list of URLs of each patent main page and save to patent_urls.txt.
fto_extract.R - function to format and sourced by fto_gather.R.
fto_gather.R - read gp search results main URLs from csv file then download full html for patent to corpus.

<!-- patent_ingest.R -->

---


## Methods

### Patent Landscape Review

To evaluate potential overlap between our Bayesian framework for genome-wide variant occurrence probabilities and existing intellectual property, we conducted a systematic patent landscape review. Searches were performed on Google Patents and Lens.org using combinations of keywords including “Bayesian,” “variant pathogenicity,” “disease probability,” “Hardy-Weinberg,” “genomic diagnosis,” and “genetic risk estimation.” Approximately 100 patents and published applications were initially screened for relevance. For each potentially relevant document, we extracted publication metadata, abstract excerpts, and technical descriptions. We then compared the disclosed methods to the core innovations of our framework, focusing on (i) genome-wide prior probability modelling of variant occurrence, (ii) integration of inheritance modes, and (iii) Bayesian quantification of diagnostic certainty incorporating observed and unobserved variant data. Detailed assessments were recorded using a standardised reporting template.

---

## Results

### Patent Landscape Review

Of \~100 patents and published applications screened, 17 were identified for detailed review due to partial conceptual overlap with computational variant interpretation. While several patents described methods for variant classification, disease risk estimation, or machine learning approaches for pathogenicity scoring, none disclosed a framework integrating genome-wide prior probabilities, Hardy-Weinberg modelling across inheritance modes, and Bayesian estimation of diagnostic certainty. A summary of these analyses is provided in Supplementary Table X.

---

## Table Caption (for Supplementary Table X)

**Supplementary Table X** | Detailed review of patents and published applications assessed for potential overlap with the Quant framework. The table includes title, publication number, publication date, abstract excerpts, identified overlapping technical concepts, key differences from Quant, and FTO conclusions.
