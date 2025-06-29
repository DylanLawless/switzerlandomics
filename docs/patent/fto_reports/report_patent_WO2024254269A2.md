## Patent/Publication Analysis

### Reference #1

- **Title:** Genetic prevalence estimator using panel distance
- **Publication No.:** WO2024254269A2
- **Publication Date:** 2024-03-28
- **Link:** https://patents.google.com/patent/WO2024254269A2/en

#### Abstract (excerpt)

> "This disclosure includes improved methods for analyzing genomic data that include methods of decreasing or removing biases from the genomic data and then analyzing the genomic data from which biases were decreased or removed. For example, estimating the prevalence of mutations of a specific gene associated with a genetic disorder in a population..."

#### Relevant Overlaps

- Both Quant and this patent focus on genetic variant data in relation to estimating disease-related genetic parameters across populations.
- Use of large gene assay or gene panel datasets involving populations of subjects with requisitioned and non-requisitioned gene sets.
- Application of Hardy-Weinberg equilibrium to estimate mutation/genetic disorder prevalence.
- Selecting unbiased or less biased subsets of subjects to reduce sampling bias in data analysis.
- Estimates of prevalence of disease-associated mutations or genetic disorders at the gene level.
- Considerations of inheritance modes, including autosomal dominant, autosomal recessive, and de novo mutations.
- Use of computational methods for prevalence estimation at a gene and mutation level.

#### Key Differences

- The patent focuses primarily on **estimating population-level prevalence of mutations and genetic disorders**, emphasizing bias mitigation in large databases by selecting subsets of samples based on "panel distance" from the gene of interest.
- The core innovation is about **sample selection to reduce bias** and **prevalence estimation** in populations.
- Quant uniquely integrates **prior probabilities of variant pathogenicity genome-wide** with **patient-level observed and missing variant data**, deriving a **Bayesian posterior probability of a complete genetic diagnosis with credible uncertainty intervals**.
- This patent does **not describe integrating variant-level pathogenicity priors, patient-level true positive/false negative variant calls, or Bayesian posterior probabilities of diagnostic confidence**.
- It does not mathematically or operationally model false negatives or unsequenced regions affecting diagnostic certainty as Quant does.
- There is no explicit use or modeling of TP, FP, TN, FN outcomes or derivation of diagnostic confidence intervals.
- The patent’s approach is generally limited to estimation of frequencies and prevalence at the population level, not direct patient-level diagnostic confidence or quantification.
- Quant's focus is on genome-wide diagnostic probability integration across all inheritance models, beyond prevalence estimation for a specific gene or mutation.
- The patent’s "distance" metric and subset selection mechanism is a novel approach to sample bias mitigation, but is unrelated to Quant’s Bayesian inference framework combining priors and patient variants.

#### Conclusion

Not blocking for Quant.

**Rationale:** While the patent relates to genetic data and prevalence estimation and shares some conceptual ground with Quant’s initial data usage (e.g., gene panels, population allele frequencies, Hardy-Weinberg), it does not disclose or claim the core novelty of Quant — namely the Bayesian integration of prior variant probabilities with patient-level observed and missing variant data to calculate posterior probabilities and credible intervals of a genetic diagnosis. The patent aims at reducing sampling bias for population prevalence, not computing individual diagnostic confidences incorporating false negative probabilities. Therefore, it lacks the essential step of integrating true positive/false negative variant considerations and Bayesian posterior inference defining Quant’s uniqueness.
