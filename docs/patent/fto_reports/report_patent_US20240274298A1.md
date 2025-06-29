## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for predicting pathogenic status of fusion candidates detected in next generation sequencing data
- **Publication No.:** US20240274298A1
- **Publication Date:** 2024-01-04
- **Link:** https://patents.google.com/patent/US20240274298A1/en

#### Abstract (excerpt)

> "A method of categorizing fusions is provided by the present disclosure. The method includes receiving labeled fusion data including at least one of DNA data or RNA data including at least one detected fusion associated with a specimen, providing the labeled fusion data to a classifier trained to generate a pathogenicity metric corresponding to pathogenicity of each detected fusion, receiving at least one pathogenicity metric from the classifier, and generating a report including one or more detected fusions included in the at least one detected fusion based on the pathogenicity metrics."

#### Relevant Overlaps

- Both the patent and Quant analyze genetic variation data derived from next-generation sequencing to determine pathogenicity.
- The patent employs a trained classifier (machine learning model) to produce a pathogenicity score (DriverScore) for gene fusions, which is a numerical metric (0–1 range) quantifying the likelihood of pathogenicity.
- The fusion pathogenicity classifier integrates features such as reading frame, breakpoint information, presence of kinase domains, transcript isoforms, and read support (true positives), and categorizes fusions into risk tiers (low, medium, high).
- The patent explicitly addresses accounting for false positives and artifacts by integrating read quality and biological features and uses thresholds to provide confidence intervals similar in concept to Quant’s credible intervals for diagnostic certainty.
- Both systems generate reports summarizing pathogenicity likelihood with actionable interpretation for clinical decision support.
- The patent’s classifier training involves supervised machine learning with positive (pathogenic) and negative (benign/artifact) controls, analogous to Quant's Bayesian integration of prior probabilities and observed evidence.
- The patent addresses data from DNA and/or RNA fusion detection pipelines, integrating biological and technical evidence in final variant classification.
- Use of population and clinical data (e.g., HGNC, Ensembl IDs, strand and chromosomal coordinates) to contextualize variant impact resembles the data inputs and processing of Quant.
- The use of false negative/false positive concepts is implicit in thresholds and validation; the fusion classifier quantifies the likelihood a fusion is a true driver event versus artifact.

#### Key Differences

- The patent focuses specifically on gene fusion events detected in sequencing data; Quant addresses genome-wide variant pathogenicity across all variant types (e.g., SNVs, indels) and inheritance modes.
- Quant’s core novelty is Bayesian integration of prior probabilities of observing pathogenic variants genome-wide per gene, incorporating unobserved false negatives, and calculating posterior probabilities for a complete genetic diagnosis, not just scoring individual variants or fusions.
- The patent uses a machine learning classifier with features relevant to fusion oncogenicity, focusing on ranking and categorizing fusion pathogenicity risk, rather than quantifying the probability of a comprehensive genetic diagnosis.
- No explicit Bayesian modeling or direct probabilistic calculation of diagnostic certainty incorporating missing variant data is described in the patent.
- The patent does not apply Hardy-Weinberg Equilibrium or gene-level prior probability estimation as in Quant.
- Quant’s methodology explicitly models all modes of inheritance and their effect on variant observation probabilities genome-wide, which is not addressed here.
- The patent targets cancer fusion detection and prioritization workflows, whereas Quant applies broadly to rare disease variant interpretation and diagnostic confidence at a genome-wide level.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
While both Quant and this patent involve pathogenicity assessment based on sequencing data and incorporate false positive and true positive considerations, this patent is narrowly focused on fusion oncogenicity scoring via a trained classifier. Quant’s distinctive innovation lies in a genome-wide Bayesian framework that integrates prior pathogenic variant probabilities with observed/missing data across all genes and variant types to compute posterior probabilities of a complete genetic diagnosis with credible intervals. The patent’s method, emphasizing fusion classification and ranking, does not overlap sufficiently with Quant’s theory, which revolves around integrating TP, FN, and Bayesian priors at a genome-wide scale rather than scoring single variant events only.

---

# Summary

The analyzed patent regards fusion pathogenicity classification using machine learning, primarily evaluating variant-level features and read support to assign pathogenicity scores and categories. Quant, in contrast, uniquely computes genome-wide prior and posterior probabilities of disease-causing variants incorporating false negative modeling and inheritance modes. The patent’s focus on scoring fusions via a classifier, without comprehensive Bayesian integration or confident diagnostic probability calculation incorporating missing data, means it is not blocking for Quant’s technology.
