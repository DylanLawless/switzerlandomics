## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for genomic and genetic analysis  
- **Publication No.:** CN113053460A  
- **Publication Date:** 2021-01-01 (approximate, date not explicitly stated but application is recent)  
- **Link:** https://patents.google.com/patent/CN113053460A/en

#### Abstract (excerpt)

> "The present invention relates to a method for genomic and/or genetic analysis of a human nucleic acid sample, comprising steps of: providing a set of human reference genomes; testing the sex and/or ancestry of the sample; selecting one or more population-specific human reference genomes (PHREGs) from the set based on test results; aligning the sample with the selected PHREG; and performing variant identification."

#### Relevant Overlaps

- Uses population-specific human reference genomes (PHREGs) tailored by inferred ancestry and sex to perform alignment and variant calling.
- Incorporates machine learning-based classifiers for sex and ancestry determination from sequencing data.
- Variant identification follows alignment to these specialized references to reduce reference bias.
- Utilizes public genomic datasets (e.g., 1000 Genomes, ClinVar) for population allele frequencies and variant annotation.
- The concept of improving variant detection accuracy by using multiple population-specific references instead of a single linear standard reference genome.

#### Key Differences

- The patent primarily addresses improving read mapping and variant calling accuracy by using customized population- and sex-specific reference genomes to reduce reference allele bias.
- Its innovation is in selecting the best reference genome(s) for alignment based on ancestry and sex testing, improving sensitivity and specificity of variant detection.
- Does **not** provide a mathematical or statistical framework to calculate genome-wide prior probabilities of observing disease-causing variants under Hardy-Weinberg Equilibrium.
- Does **not** quantitatively integrate prior population-level variant probabilities with observed patient variant data to compute a **Bayesian posterior probability** of a genetic diagnosis.
- No explicit modeling or quantification of false negatives or diagnostic certainty (credible intervals) as a result of the integration of prior and observed data.
- The focus is on alignment accuracy, variant detection sensitivity, and classification of sex and ancestry, not on compounding these into genome-wide diagnostic confidence metrics or probabilistic disease-causing variant burdens.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
This patent concerns an approach to reduce reference bias and improve variant calling by tailoring the reference genome based on inferred ancestry and sex. While both Quant and this patent relate to variant analysis and use population data, the technical approaches and goals differ significantly. Quant’s novelty lies in Bayesian integration of prior genetic burden and observed variant data—including false negative modeling—to produce posterior probabilities of disease-causing variants and diagnostic certainty. This patent focuses on alignment and variant detection improvements via PHREG selection and does not contemplate or claim Quant’s probabilistic Bayesian diagnostic framework. Thus, it does not block Quant’s unique method.
