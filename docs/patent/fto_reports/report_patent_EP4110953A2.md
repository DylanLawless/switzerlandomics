## Patent/Publication Analysis

### Reference #1

- **Title:** Compositions, methods, and systems for paternity determination
- **Publication No.:** EP4110953A2
- **Publication Date:** 2022-04-13
- **Link:** https://patents.google.com/patent/EP4110953A2/en

#### Abstract (excerpt)

> "This application provides methods and systems for paternity determination. In some embodiments, the method is a non-invasive prenatal paternity determination method, which comprises obtaining genotypes for one or more polymorphic nucleic acid targets in a genomic DNA sample obtained from an alleged father, isolating cell-free nucleic acids from a biological sample obtained from the pregnant mother comprising fetal nucleic acids... The genotypes of the trio (i.e., the mother, the fetus, and the alleged father) are then analyzed to produce a paternity index, which represents the likelihood that the alleged father is the biological father versus the likelihood that a random man, from the same population as the alleged father, is the biological father."

#### Relevant Overlaps

- Use of polymorphic nucleic acid targets (mostly SNVs) to identify fetal-specific alleles in maternal cell-free DNA.
- Determining fetal genotypes by measuring allele frequencies of informative polymorphic nucleic acid targets.
- Application of clustering algorithms (e.g., k-means) to distinguish informative SNVs where mother and fetus differ genetically.
- Calculating a paternity index (likelihood ratio) by integrating maternal, fetal, and alleged father genotypes for each informative polymorphic nucleic acid target.
- Use of Bayesian and maximum likelihood statistics for genotype inference and paternity determination.
- Enrichment of polymorphic nucleic acid targets via multiplex PCR and subsequent sequencing for allele frequency determination.
- Provision of posterior probabilities for fetal genotype assignments and combined paternity index thresholding to determine biological father status.

#### Key Differences

- The patent focuses specifically on prenatal paternity testing by determining fetal genotype from maternal cfDNA mixtures and comparing to alleged father genotypes, with emphasis on paternity index calculation.
- The core goal is relationship (paternity) determination through allele frequency and genotype comparisons across informative SNVs, not quantifying prior probabilities of pathogenic variants genome-wide.
- The method does not explicitly model nor evaluate true positive (TP), false negative (FN), false positive (FP), or true negative (TN) variants to compute diagnostic certainty or Bayesian posterior probabilities of a **genetic diagnosis**.
- It is essentially a specialized population genetics and forensic statistical method applied to fetal cfDNA mixture analysis for paternity likelihood, rather than a disease variant probability framework.
- The technology does not integrate population-based Hardy-Weinberg Equilibrium derived prior probabilities across genome-wide variants and inheritance modes.
- False negative probabilities due to unsequenced regions or incomplete variant observation are not explicitly modeled or incorporated into posterior probabilities.
- The platform does not produce credible intervals or quantitative uncertainty bounds reflecting **diagnostic certainty of disease causality**.
- No integration of variant pathogenicity classifications, clinical gene panels (e.g., PanelApp), or disease-specific risk estimates.
- The analysis focuses on allelic differences informative for fetal fraction and paternity index, not genome-wide variant pathogenicity probability estimation.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While this patent and Quant both use Bayesian statistics and allele frequency-based inference from polymorphic targets, the patent is narrowly directed to non-invasive prenatal paternity testing via fetal genotype inference from maternal cfDNA and paternity index calculation. Quant’s innovation is a genome-wide platform estimating prior probabilities of pathogenic variants per gene/inheritance mode, integrating observed/missing variant data (TP, FN, etc.) to compute Bayesian posterior probabilities of complete genetic diagnoses with credible intervals. The patent lacks the disease diagnosis certainty modeling and genome-wide variant probability framework unique to Quant. Hence, there is no close technical overlap that would block Quant’s freedom to operate.
