## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for genomic and genetic analysis
- **Publication No.:** EP3588506B1
- **Publication Date:** 2021-04-14 (grant date)
- **Link:** https://patents.google.com/patent/EP3588506B1/en

#### Abstract (excerpt)

> Abstract is not explicitly provided. The document describes methods for improving genomic and genetic analysis by selecting population-specific human reference genomes (PHREGs) based on sex and ancestry testing of a human nucleic acid sample, followed by alignment and variant calling against these PHREGs to reduce reference bias and improve variant detection accuracy.

#### Relevant Overlaps

- The document focuses on improving variant calling by:
  - Testing sample sex and ancestry.
  - Selecting population- and sex-specific reference genomes (PHREGs).
  - Performing alignment and variant calling against these adapted references to reduce reference bias.
- Uses populations allele frequencies indirectly by building PHREGs representing majority or non-rare alleles.
- Applies machine learning for ancestry classification based on genomic features (SNPs).
- Enhances variant detection by improving read alignment accuracy in regions with ancestry-specific variation.
- Variant calling is performed after alignment to PHREGs.
- Considers encoding of reference genomes at different allele levels (majority, non-rare alleles, all observed alleles).

#### Key Differences

- Unlike Quant, this invention:
  - Does **not** model or compute genome-wide prior probabilities of disease-causing variants.
  - Does **not** integrate observed variant calls with probabilities of false negatives (unobserved variants) to calculate Bayesian posterior probabilities of a complete genetic diagnosis.
  - Does **not** quantify confidence intervals or credible intervals on diagnostic certainty.
  - Focuses on reducing alignment bias by using population- and sex-specific reference genomes, thus improving variant calling sensitivity and specificity.
  - Uses standard variant calling post alignment; it does not provide a probabilistic diagnostic certainty measure that incorporates TP, FP, FN, TN concepts.
- The machine learning techniques are applied for classifying ancestry/sex rather than combining statistical evidence for diagnosis certainty.
- Data inputs and outputs relate to sequencing alignment and variant calling, not Bayesian posterior diagnostics.
- No claims or descriptions relate to explicitly modeling diagnostic uncertainty or integrating prior variant probabilities with patient-level evidence.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
EP3588506B1 describes a method to improve read alignment and variant calling accuracy by using population- and sex-specific human reference genomes selected based on ancestry and sex tests of the sample. This reduces reference genome bias and increases variant calling sensitivity. However, it does not disclose the core concepts of Quant, which calculates genome-wide prior probabilities of disease-causing variants, integrates observed variant data with false negative probabilities, and produces a Bayesian posterior probability quantifying diagnostic certainty with credible intervals. The overlap is superficial in that both deal with genome analysis and variant detection but differ fundamentally in objective and method. Therefore, this patent does not pose a Freedom-to-Operate barrier to Quant’s unique diagnostic probabilistic framework.
