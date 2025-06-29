## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of analyzing genetic variants based on genetic material
- **Publication No.:** US20220293214A1
- **Publication Date:** 2022-09-22
- **Link:** [https://patents.google.com/patent/US20220293214A1/en](https://patents.google.com/patent/US20220293214A1/en)

#### Abstract (excerpt)

> "Provided are methods for identifying gene variants associated with a phenotype, for example by inferring and scoring of structural variants from whole-genome or exome data or processing a set of genes against a known set of genes having known variants associated with a set of phenotypes, and optionally determining how likely each of the genes are to cause the phenotype."

#### Relevant Overlaps

- Use of genetic variant data from whole-genome or exome sequencing.
- Scoring or prioritization of variants in genes with respect to disease phenotypes.
- Construction of "badges" spanning exons and surrounding regions to infer structural variant ploidy.
- Inferring structural variants by analyzing variant read depths and allele distributions (e.g., discrepancy from expected zygosities).
- Use of population allele frequencies (like gnomAD) to inform ploidy and variant interpretation.
- Calculation of a likelihood or Bayes factor that a gene harboring variants is causative for the patient phenotype.
- Integration of variant deleteriousness scores, phenotype-based gene prioritization (e.g., using PHEVOR), and known gene-disease associations (e.g., OMIM, ClinVar).
- Automatic prioritization of compound heterozygous genotypes involving SNVs/INDELs in trans with larger structural variants.
- Reporting and ranking genes and variants by their likelihood of pathogenicity with statistical confidence indicators.
- Use of Bayesian models and Bayes factor calculations to quantify gene-level pathogenicity likelihood.
- Aggregation of variant-level data, burden tests, and phenotype information to output probabilistic diagnostic assessments.

#### Key Differences

- The patent focuses substantially on structural variant inference from small variant data using "badges," a concept absent from Quant's description, which emphasizes genome-wide prior probability integration for all variant types, including observed/missing variant data.
- While both use Bayesian formalisms, the patent's method centers on detecting and scoring structural variants via ploidy estimation and badge merging, rather than integrating genome-wide variant prior probabilities with true positive and false negative assessments to calculate posterior diagnosis probabilities explicitly.
- Quant uniquely incorporates explicit modeling of false negatives (missing variant probabilities) and diagnostic credible intervals genome-wide, which is not evident in this patent.
- The patent leverages variant/deleteriousness scoring and phenotype-based gene prioritization but does not describe deriving posterior probabilities of a complete genetic diagnosis accounting for observed/missing variants.
- The patent's structural variant detection and scoring pipeline appears designed to improve SV calling accuracy and prioritize SVs by pathogenicity, whereas Quant's innovation relates to probabilistic diagnosis certainty integrating all modes of inheritance, observed variant data, and population priors.
- No explicit use of confusion matrix concepts (true positives, false positives, true negatives, false negatives) or their integration into posterior diagnostic certainty, as is a core part of Quant's novel approach.
- Use of widely known variant pathogenicity classifiers and phenotype ontologies is common to both but not indicative of blocking since these are standard components.

#### Conclusion

Not blocking for Quant.

---

### Summary

The provided patent discloses methods for inferring and prioritizing structural variants from genomic data using "badges" spanning exons and regulatory regions, estimating ploidy from variant allele frequencies and read depths, and scoring gene-phenotype causality with Bayesian factors. While the approach shares use of Bayesian statistics and integrates variant deleteriousness and phenotype data, it does not incorporate the unique Quant innovation of integrating prior probabilities of disease-causing variants genome-wide with patient-specific observed and missing variant data (accounting for false negatives) to provide a posterior probability of a complete genetic diagnosis and credible intervals of diagnostic certainty.

The patent is focused primarily on structural variant inference and prioritization, not on the holistic diagnostic probability framework central to Quant. Consequently, it does not pose a substantial freedom-to-operate barrier for Quant.
