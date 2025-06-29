## Patent/Publication Analysis

### Reference #1

- **Title:** Automatic identification of the source of faults in nucleotide sequencing from base interpretation error patterns
- **Publication No.:** CN117561573A
- **Publication Date:** 2022-05-31
- **Link:** https://patents.google.com/patent/CN117561573A/en

#### Abstract (excerpt)

> "Methods, systems, and non-transitory computer readable media are disclosed for accurately and efficiently identifying base interpretation error scars or patterns from sequencing data to determine the source of faults contributing to those base interpretation error scars or patterns... Based on this correlation and by utilizing statistical models, the disclosed systems can identify sources of faults that contribute to nucleotide-specific errors within base interpretation error scars."

#### Relevant Overlaps

- Both the patent and Quant deal with nucleotide base interpretation errors and use probabilistic/statistical models to analyze sequencing data.
- The patent employs a confusion matrix to quantify base interpretation error rates grouped by nucleotide changes (e.g., A→T), and integrates adjacent nucleotide context (flanking bases) into error pattern detection, which resembles the fine-grained error pattern profiling in Quant.
- The patent uses statistical models (variance component analysis) to assign contribution metrics that identify fault sources tied to sequencing materials or software.
- The concept of modeling true positive and false negative rates indirectly appears in the patent’s error rate normalization and error pattern correlation with manufacturing faults.
- The use of base-level error rates stratified by error type and genomic context partially resembles Quant’s detailed integration of variant quality and false negative probabilities.
- The statistical decomposition and contribution assignment (e.g. detecting variance causes of error types attributed to specific reagents or hardware) conceptually aligns with Quant's Bayesian integration of unobserved false negatives in genetic diagnosis confidence.

#### Key Differences

- The patent focuses primarily on **identifying sources of sequencing errors and faults in the sequencing pipeline hardware, chemistry, and software** by analyzing nucleotide base call error patterns across sequencing runs and manufacturing lots.
- Quant’s core novelty is the **estimation of disease-causing variant prior probabilities genome-wide and the integration of observed variant data with probabilities of missing variants to produce Bayesian posterior probabilities of genetic diagnosis** confidence.
- The patent does not claim or disclose calculating genome-wide prior disease probabilities or integrating variant pathogenicity within a diagnostic probability model.
- The patent's contribution metrics and variance component analysis pertain to the **source of sequencing faults**, whereas Quant models the **interpretation of variants for clinical diagnostic certainty**.
- The patent uses sequencing error rates to troubleshoot sequencing performance and maintenance, not to assess pathogenic variant observation probability or genetic diagnosis confidence.
- Quant explicitly models mode of inheritance and disease causal probability, which are absent in the patent.
- The patent does not employ or claim Bayesian posterior probabilities or credible intervals explicitly quantifying diagnostic certainty considering true and false negative variants.

#### Conclusion

Not blocking for Quant.

---

**Summary:** This patent is concerned with analyzing sequencing base call errors to detect sequencing faults and their source via statistical modeling. While it shares the use of nucleotide-level error rates and error pattern analysis, it does not address nor claim the Quant innovation of quantifying genome-wide prior probabilities for disease-causing variants or integrating these with observed and missing variants to compute Bayesian posterior probabilities for genetic diagnosis confidence. Therefore, it does not overlap technically with the key novelty and claims of Quant.
