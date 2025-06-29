## Patent/Publication Analysis

### Reference #1

- **Title:** Diagnostic genomic predictions based on electronic health record data  
- **Publication No.:** US20210375407A1  
- **Publication Date:** 2021-12-02  
- **Link:** [https://patents.google.com/patent/US20210375407A1/en](https://patents.google.com/patent/US20210375407A1/en)  

#### Abstract (excerpt)

> "Disclosed are methods, devices, systems, circuits, media, and other implementations that include a method including accessing electronic health record data for a patient, performing natural language processing on the electronic health record data to extract biomedical concepts, processing the biomedical concepts to obtain phenotype terms, normalizing the phenotype terms to generate normalized phenotype terms, and identifying based on the normalized phenotype terms one or more candidate genes responsible for one or more medical conditions causing at least some of the biomedical concepts extracted from the electronic health record data."

#### Relevant Overlaps

- Use of natural language processing (NLP) to extract biomedical/phenotype concepts from electronic health records (EHR).
- Normalization of phenotype terms using ontologies such as Human Phenotype Ontology (HPO).
- Gene prioritization / ranking based on degree of match between normalized phenotype terms and gene–disease annotations.
- Use of multiple NLP pipelines and combining outputs to derive composite gene rankings.
- Integration of phenotype data derived from clinical narrative with genotype/exome/genome sequencing data to identify causal genes.
- Use of semantic knowledge bases (UMLS, HPO) for phenotype recognition.
- Providing ranked gene lists to facilitate genetic diagnosis.

#### Key Differences

- The patent focuses on:
  - Extracting and normalizing phenotypes from EHR textual data.
  - Prioritizing candidate genes responsible for disease based primarily on phenotype–gene associations.
  - Leveraging phenotype-driven gene ranking to guide genetic diagnosis.
- The patent does **not** explicitly disclose nor claim:
  - Calculating genome-wide prior probabilities of observing pathogenic variants across all genes under population genetics principles, including Hardy-Weinberg Equilibrium.
  - Integrating prior probabilities with patient-observed variant presence/absence or accounting for false negatives in variant detection.
  - Computing Bayesian posterior probabilities of a *complete* genetic diagnosis considering true positives, false negatives, false positives, and true negatives.
  - Providing credible intervals quantifying uncertainty/confidence in achieving a genetic diagnosis.
  - Modeling the mode of inheritance in probabilistic diagnostic confidence calculation.
  - Quantifying diagnostic certainty genome-wide rather than listing or ranking candidate genes.
- The patent describes a gene prioritization framework driven by phenotype extraction and gene–phenotype association scores rather than a probabilistic framework for variant observation and diagnosis confidence.
- No explicit use of TP, FP, FN, TN metrics or Bayesian integration of prior and observed genetic data is described.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent centers on phenotype extraction from EHRs and subsequent phenotype-driven gene prioritization, optionally combined with genotype data to implicate causative variants. It does not address Quant’s core innovation of integrating population genetic prior probabilities with observed variant data (including false negatives) in a Bayesian framework to quantify the confidence of a complete genetic diagnosis genome-wide. Thus, while both address computational genomic diagnosis, their technical approaches and conceptual bases differ fundamentally.
