## Patent/Publication Analysis

### Reference #1

- **Title:** Method for selecting statistically validated candidate genes  
- **Publication No.:** CN102369531B  
- **Publication Date:** 2017-06-07  
- **Link:** https://patents.google.com/patent/CN102369531B/en  

#### Abstract (excerpt)

> "Abstract Provided herein are methods for evaluating associations between candidate genes and a trait of interest in a population. The methods include a combination of genome-wide association analysis and one or both of nested association mapping (NAM), and expression QTL analysis (eQTL). Markers are selected or prioritized if they are shown to be positively-correlated with a trait of interest using GWA and a combination of one or both of NAM and eQTL."

#### Relevant Overlaps

- Uses genome-wide association studies (GWAS) combined with nested association mapping (NAM) and eQTL analysis to identify candidate genetic markers associated with traits.
- Introduces statistical regression models (Single Marker Regression (SMR) and Multiple Marker Regression (MMR)) for associating genotype with phenotype in nested populations.
- Employs linear regression and successive regression techniques to identify statistically significant markers.
- Focus on prioritizing candidate genes by marker-trait associations for downstream applications such as marker-assisted breeding.

#### Key Differences

- The patent focuses on population-level association mapping to identify genetic markers statistically correlated with phenotypic traits, rather than quantifying an individual's genetic diagnosis confidence.
- The methods do not integrate observed and unobserved variant data (e.g., accounting for false negatives) from individual genomes to compute Bayesian posterior probabilities for diagnosis certainty.
- The patent’s statistical methods are classical regression models and genetic mapping techniques, without explicit use of Bayesian integration of priors and observed/missing data as in Quant.
- The focus is on selecting candidate markers for breeding and trait discovery, not on producing variant-level or gene-level posterior probabilities with credible intervals for clinical diagnosis.
- Bayesian approaches here are used for eQTL and association mapping but do not model diagnostic certainty considering TP, FP, FN, TN in a clinical or patient-specific context.
- Uses plant and animal breeding populations, mainly inbred lines and nested populations, whereas Quant is focused on human genomic diagnostics.

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
This patent leverages association mapping methods to detect statistically significant markers linked to traits in populations, mainly for plant and animal breeding applications. Quant’s unique innovation—Bayesian integration of prior probabilities with observed and unobserved patient variant data to estimate the posterior probability and credible intervals of a genetic diagnosis—is not disclosed or suggested. The patent’s use of regression to confirm marker-trait associations differs fundamentally from Quant’s focus on quantifying diagnostic confidence through integration of probabilistic models addressing clinical variant observation and missingness. No teaching or claim approaches the core Quant innovation of modeling TP, FP, FN, and TN in diagnosing individual genomes.

---

# Summary

The analyzed patent is centered on statistical association mapping using regression models in nested populations and combining GWAS, NAM, and eQTL to prioritize candidate genes for breeding. It does not address Bayesian posterior probabilities for patient-level genetic diagnosis taking account of false negatives or diagnostic certainty credible intervals as Quant does. Therefore, it poses no blocking risk for Quant’s freedom to operate.
