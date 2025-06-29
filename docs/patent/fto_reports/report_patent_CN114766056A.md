## Patent/Publication Analysis

### Reference #1

- **Title:** Improved variant calling procedure using single cell analysis
- **Publication No.:** CN114766056A
- **Publication Date:** 2022-05-17
- **Link:** https://patents.google.com/patent/CN114766056A/en

#### Abstract (excerpt)

> "Described herein is an improved variant calling method comprising a two-step process involving 1) error correction of bases in sequence reads by a cell-specific process, and 2) use of the error-corrected sequence reads in variant calling in cell populations. Typically, the first step of error correction involves applying a first machine learning model to identify and correct the bases of the sequence reads. The second step variant calling involves applying a second machine learning model to classify bases. Such improved variant calling methods can be used to identify variants involved in biological processes, eg, diseased biological processes."

#### Relevant Overlaps

- Both this patent and Quant focus on variant calling accuracy improvements by modeling not only observed signals but correcting errors in sequence reads.
- Emphasis on explicit error correction of bases at the single-cell level before variant calling.
- Use of machine learning models for (a) error correction and (b) variant classification/calling.
- Analysis of multiple outcome states related to base calls and variant status across cells.
- Use of transition matrices and modeling sequencing error probabilities.
- Generation of cell population features such as heterozygous/homozygous call percentages, median variant allele frequency (VAF), genotype quality metrics, and read depth variations.
- Deep learning models (neural networks) to learn sequence context and motif patterns for correction/classification.
- The patent discloses a workflow for generating corrected read data representative of true cellular sequences prior to variant calling.
- The variant caller model predicts types of variants (heterozygous, homozygous, uncertain).
- The patent explicitly claims a two-step method involving per-cell base-level error correction followed by aggregation and variant calling, with machine learning integration.
- Training based on known variant truth sets and evaluation showing increases in positive predictive value.

#### Key Differences

- The disclosed patent is focused strictly on single-cell sequencing data and correcting single-cell specific sequencing errors before variant calling.
- Quant’s unique novelty is integrating genome-wide prior probabilities of observing pathogenic variants under population genetics models and combining these with observed/missing variant data (TP, FN, FP, TN) using Bayesian posterior probability to quantify genetic diagnostic certainty.
- The patent does not describe estimating genome-wide prior probabilities for disease causality or modeling false negatives for incomplete genetic diagnoses.
- No mention of deriving credible intervals for diagnostic certainty or genome-wide gene-level pathogenicity risk.
- The patent centers on calling variants (presence/absence), not on providing probabilities that a patient truly harbors a causal disease variant by integrating prior knowledge and sequencing sensitivity.
- Quant’s core innovations lie in statistical modeling at gene and genome levels for diagnosis confidence, which are not addressed here.
- The patent’s error correction and variant calling models use features derived from sequencing data only, without integration of external population data or inheritance modes.
- The patent’s approach does not extend to diagnostic reports with posterior probabilities or population burden statistics.

#### Conclusion

Not blocking for Quant.

**Explanation:**  
While this patent shares the general field of variant calling and uses ML-based per-cell error correction and variant classification, it focuses on improving base-calling accuracy in single-cell sequencing data. It neither teaches nor suggests the integration of prior probabilities of disease variant presence genome-wide nor the Bayesian framework Quant uses to quantify diagnostic certainty accounting for false negatives. Quant’s unique pioneered approach is conceptually and technically distinct from the variant calling error-correction and ML classification techniques disclosed here.
