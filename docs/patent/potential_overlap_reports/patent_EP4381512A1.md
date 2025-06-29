## Patent/Publication Analysis

### Reference #1

- **Title:** Somatic variant cooccurrence with abnormally methylated fragments
- **Publication No.:** EP4381512A1
- **Publication Date:** 2022-08-04 (priority), publication 2023-02-15
- **Link:** https://patents.google.com/patent/EP4381512A1/en

#### Abstract (excerpt)

> "Systems and methods for identifying variant alleles as somatic or germline are provided. Reference and variant alleles for a genomic position are identified. Methylation states and sequences of nucleic acid fragment sequences that map to the genomic position are obtained from a sample of a subject... One or more indications of the methylation states across the nucleic acid fragment sequences in the variant subset and an indication of the number of nucleic acid fragment sequences in the reference subset versus the variant subset are applied to a trained binary classifier. An identification of the variant allele at the genomic position as somatic or germline is obtained from the classifier."

#### Relevant Overlaps

- Both this patent and Quant analyze nucleic acid fragment sequences mapped to genomic positions.
- Both assign fragment sequences to reference or variant subsets based on the allele they carry.
- Both utilize methylation states of nucleotide fragments as features to inform classification.
- Both apply a trained binary classifier to inputs comprising methylation metrics (e.g. p-values or methylation distributions) combined with counts or ratios of reference vs. variant fragments.
- The patent details the use of distribution statistics of methylation p-values and CpG site counts aggregated over variant and reference subsets as model inputs.
- Both focus on identification of variants as somatic or germline, integrating methylation and sequence data.
- The classifier in the patent is trained on labeled data with known somatic/germline calls (orthogonal calls) analogous to supervised training described in Quant.
- Both process millions of nucleic acid fragment sequences derived from biological samples such as liquid biopsies.
- Employ Bayesian approaches for prior genotype probability in variant calling steps before allelic classification.
- Use bisulfite or enzymatic conversion to detect methylated cytosines and derive methylation state vectors/patterns.
- Using sample-specific methylation patterns relative to healthy cohorts (p-values) to identify anomalous methylation.
- The patent explicitly incorporates assessment of variant allele counts, reference allele counts, methylation states, and CpG site features in a multivariate model.
- Overall, the patent presents a method that very closely mirrors Quant’s approach of integrating allele-specific counts and methylation-based features processed through a classifier to classify variants as somatic or germline.

#### Key Differences

- The patent is specifically framed around calling somatic vs germline variants primarily leveraging co-occurrence with abnormal methylation fragments, possibly more focused towards cancer detection.
- Quant’s core novelty lies beyond variant classification labels; it integrates prior probabilities and estimates false negatives to compute Bayesian posterior probabilities of *complete genetic diagnosis* with credible intervals—an emphasis on diagnostic confidence genome-wide.
- Quant explicitly models genome-wide prior probabilities under Hardy-Weinberg equilibrium and integrates all observed and unobserved variant evidence into posterior probabilities of carrying a pathogenic variant causally linked to disease.
- The patent focuses on classification of individual variant alleles as somatic or germline via methylation-aware supervised machine learning but does not disclose computation of gene-level or genome-wide prior and posterior probabilities of genetic diagnosis confidence.
- Quant’s explicit inclusion of inheritance modes, false negative probabilities, and credible intervals for diagnostic certainty are not disclosed here.
- This patent also includes extensive computational details on variant allele likelihood calculation using strand-specific base counts and bisulfite-conversion-aware Bayesian models absent in Quant.
- Quant supports integration of many variant data types from bulk genome analyses, while the patent concentrates on methylation fragment co-occurrence signals for binary variant classification.

#### Conclusion

Potential overlap — recommend legal review.

---

### Summary

The patent EP4381512A1 discloses methods that are extremely close in technical approach to the key supervised classification aspect of Quant—i.e., assigning nucleic acid fragment sequences with reference and variant alleles, computing methylation metrics per subset, and passing those plus fragment counts to a trained binary classifier to distinguish somatic vs. germline variants. The extensive support for methylation p-values, CpG site counts, and Bayesian variant calling are highly aligned with Quant’s methylation-integrated variant classification.

However, the patent does not disclose the core innovative framework of Quant that models genome-wide prior probabilities, incorporates false negative events for unobserved variants, calculates Bayesian posterior probabilities reflecting diagnostic confidence across all genes and inheritance modes, or produces credible intervals. Those broader diagnosis-confidence computations and genome-wide aggregation methods represent Quant’s unique technical contribution beyond the variant-level classification approach in this patent.

Given the high similarity in using methylation-aware classifiers to distinguish variant type but difference in the overall diagnostic probability framework and outputs, this patent presents potential freedom-to-operate concerns related to the variant-level somatic/germline classification step in Quant. A thorough legal review is recommended to carefully assess claims scope, possible workarounds, and licensing options relative to Quant’s variant classification components. The post-calling diagnostic confidence modeling and genome-wide probabilistic outputs of Quant appear not disclosed in this patent.

---

*End of Report*