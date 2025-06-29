## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for screening diseases in subjects
- **Publication No.:** US20160281166A1
- **Publication Date:** 2016-09-29
- **Link:** https://patents.google.com/patent/US20160281166A1/en

#### Abstract (excerpt)

> "The present disclosure provides systems, devices, and methods for a fast-turnaround, minimally invasive, and/or cost-effective assay for screening diseases, such as genetic disorders and/or pathogens, in subjects."

#### Relevant Overlaps

- Use of next-generation sequencing (NGS), targeted next-generation sequencing (TNGS), or whole-exome sequencing (WES) to detect presence, absence, or predisposition to genetic conditions.
- Analysis of sequence data to detect genetic alterations including nucleotide substitutions, indels, and copy number variants.
- Incorporation of clinical phenotype information to improve variant interpretation.
- Identification and filtering of variants based on protein impact and minor allele frequency.
- Use of in silico gene filtering to focus on panels of disease-related genes.
- Handling of false negatives due to incomplete coverage or pseudogene interference.
- Quantification of diagnostic sensitivity and specificity.
- Reporting and interpretation software modules to classify sequencing results for diagnosis.
- Consideration of potential false negatives due to sequencing/capture limitations.
- Reference to credible intervals and variant effect prediction scores in filtering (implied in scoring/annotation).
- Use of Bayesian and filtering approaches for interpretation (from referenced bioinformatics tools, e.g., GATK, Opal).

#### Key Differences

- The patent primarily describes laboratory methods for sample collection, DNA isolation (including from dried blood spots), sequencing workflows, and bioinformatics pipelines for detecting genetic variants and linking them to disease phenotypes.
- It focuses mainly on variant detection, annotation, and filtering for known pathogenic variants in disease-associated genes, supporting clinical diagnostic reporting.
- The patent does not teach or claim genome-wide prior probability calculations for disease-causing variant occurrence per gene nor integration of missing/unobserved variant data such as false negative assessment explicitly.
- The patent does not disclose quantifying confidence in a *complete genetic diagnosis* by combining prior probabilities with observed and unobserved variant evidence to calculate Bayesian posterior probabilities with credible intervals.
- The sequencing analysis is variant- or mutation-centric, focusing on classification of alleles found, not on genome-wide prior modeling of pathogenic variant distribution nor comprehensive Bayesian diagnostic confidence.
- While it mentions integration of phenotype information for variant interpretation, it does not describe incorporating false negative probabilities or a probabilistic model that accounts for the presence or absence of variants holistically per gene or genome.
- No explicit use or teaching of true positive (TP), false positive (FP), true negative (TN), and false negative (FN) probabilities in a Bayesian framework to estimate diagnostic certainty is disclosed.
- The patent does not claim or disclose the quantitative integration of allele frequencies, Hardy-Weinberg equilibrium expectations, mode of inheritance modeling, and observed patient data into a posterior probability of disease status.
- The detailed innovations about credible intervals of diagnosis certainty and genome-wide prior modeling are absent.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although this patent covers targeted NGS workflows and variant detection/annotation for diagnosing genetic disorders, it does not disclose or claim the core novel aspects of Quant—which are genome-wide prior probability calculations of pathogenic variant occurrence, explicit modeling of false negatives, integration of prior and observed data into Bayesian posterior probabilities for *complete* genetic diagnosis confidence, and output of credible intervals reflecting diagnostic certainty. The patent's focus is on variant detection and filtering in predefined panels with clinical annotation, not a probabilistic framework quantifying diagnostic confidence across the genome. Therefore, the patent does not block Quant's unique technical approach.
