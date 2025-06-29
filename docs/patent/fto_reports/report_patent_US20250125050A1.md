## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for molecular residual disease liquid biopsy assay
- **Publication No.:** US20250125050A1
- **Publication Date:** 2025-04-24
- **Link:** https://patents.google.com/patent/US20250125050A1/en

#### Abstract (excerpt)

> "Systems and methods for molecular residual disease (MRD) status determination for a subject's cancer condition subject uses sequence reads from methylation sequencing of cell-free DNA fragments from the subject's liquid biopsy sample to determine their methylation patterns. From this, corresponding numbers of circulating-tumor DNA (ctDNA) fragments mapping to each of a plurality of regions of the genome of the subject's species are determined. Corresponding expected numbers of noise fragments in each region are determined based on corresponding distributions using observed sequencing depths and learned background emission rates for each region. An excess fragments per million (FPM) value, corrected by an observed CHG methylation level, is determined from the observed number of ctDNA fragments in excess of the expected number of noise fragments in each region. MRD is called when the CHG corrected excess FPM value satisfies a threshold value, and a call against MRD is made when it does not."

#### Relevant Overlaps

- Uses methylation sequencing of cell-free DNA from liquid biopsies to determine circulating tumor DNA (ctDNA).
- Maps ctDNA fragments to genomic regions and determines expected noise fragments based on distributions using sequencing depth and learned background emission rates.
- Computes an excess fragments per million (FPM) value corrected by observed CHG methylation levels, analogous to Quant's correction of excess variant measures by methylation error proxies.
- Applies a threshold to call positive or negative MRD status.
- Integrates a secondary sequence analysis to identify candidate somatic variants with filtering that includes variant allele frequency thresholds, presence in germline databases, and clonal hematopoiesis of indeterminate potential (CHIP) regions.
- Use of Bayesian or probabilistic modeling approaches to distinguish true tumor-derived DNA from background/noise.
- Explicitly accounts for sequencing artifacts and false positives by filtering and correction.
- Provides diagnostic outputs including calls of MRD presence, candidate variant reporting, and therapeutic matching.

#### Key Differences

- The patent focuses on cancer molecular residual disease detection using cell-free DNA methylation patterns and variant detection through liquid biopsy, specifically addressing ultra-low-level circulating tumor DNA post cancer treatment.
- Quant focuses on genome-wide prior probabilities of observing pathogenic variants to compute a Bayesian posterior probability for genetic diagnosis confidence across hereditary diseases, accounting for observed true positives and false negatives in variant detection.
- Although both utilize probabilistic models and Bayesian frameworks, this patent’s methodology centers on methylation sequencing to detect tumor fragments and uses fragment counts normalized per million reads, whereas Quant models prior variant pathogenicity probabilities integrating variant classification and Hardy-Weinberg equilibrium genotype frequencies.
- The patent distinctly addresses tumor vs normal plasma discrimination and minimal residual disease in oncology, while Quant addresses rare genetic disease diagnosis genome-wide.
- While both use thresholds and corrections for noise, this patent’s excess fragment correction for CHG methylation is specific to enzymatic conversion errors in methylation sequencing; Quant’s false negative modeling includes unobserved and poorly sequenced genomic regions accounting for diagnostic confidence.
- This patent’s variant filtering includes specific panels, variant interval pre-test odds, and CHIP variant exclusion tailored to somatic cancer variants rather than germline definitions or inheritance mode.
- The two approaches differ in biological context, clinical purpose, and statistical modeling granularity (fragment methylation state vs variant pathogenicity and diagnostic certainty).

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
This patent employs Bayesian and probabilistic concepts around fragment-level ctDNA detection using methylation patterns to call cancer MRD, including noise correction and variant filtering. Although these concepts superficially resemble Bayesian integration of evidence and false positive/false negative modeling, the underlying biological problem, computation inputs, and outputs differ substantially from Quant’s genome-wide disease variant probability framework. Specifically, this patent targets somatic tumor DNA detection in oncology liquid biopsies with methylation sequencing and variant filters for MRD, whereas Quant integrates prior variant pathogenicity probabilities and Hardy-Weinberg model-based prior observation probabilities with observed patient variant data in inherited disease diagnostics. The methods do not compute posterior probabilities of complete genetic diagnosis incorporating TP and FN variant observation across all inheritance modes and genes as in Quant. The patent's methylation correction and fragment counting are not mathematically or conceptually analogous to Quant’s modeling of variant pathogenicity and diagnostic certainty using prior probabilities. Thus, this patent does not present a close method or conceptual overlap blocking Quant’s freedom to operate.
