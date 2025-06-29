## Patent/Publication Analysis

### Reference #1

- **Title:** A kind of construction method and constructing system of type II diabetes risk evaluation model  
- **Publication No.:** CN107256323A  
- **Publication Date:** 2017-02-22  
- **Link:** https://patents.google.com/patent/CN107256323A/en

#### Abstract (excerpt)

> "The model ... is built according to bayesian algorithm and hardy weinberg equilibrium principle ... calculating the mathematic expectation and OR values of crowd's risk allele quantity, with reference to the epidemiology illness rate of type II diabetes, obtain average illness rate and confidential interval of the colony based on heredity ... The present invention improves the accuracy of High risk group examination ..."

#### Relevant Overlaps

- Uses a Bayesian algorithm combined with Hardy-Weinberg equilibrium to build a disease risk evaluation model.
- Calculates disease risk probability based on the number of risk alleles across multiple SNP loci.
- Incorporates odds ratios (OR) of SNP risk alleles and their population frequencies.
- Generates confidence intervals/credible intervals for disease risk estimates.
- Uses epidemiological disease prevalence as a prior baseline.
- Computes disease risk as a function of aggregated genetic variants (SNPs) and population data.

#### Key Differences

- Focuses on polygenic risk scoring specifically for type II diabetes risk, using weighted sums of risk alleles (OR values).
- The model calculates individual disease risk but does not infer a posterior probability of a complete genetic diagnosis.
- Does not integrate observed versus unobserved variants (e.g., no explicit modeling of true positives, false negatives, or sequencing coverage gaps).
- No explicit use of patient-specific observed variant state combined with Bayesian posterior updating to assess diagnostic certainty.
- Operates at a SNP-level risk scoring approach rather than a genome-wide gene-level diagnostic probability framework.
- The purpose is disease risk prediction (polygenic risk score) rather than diagnostic confidence quantification.

#### Conclusion

Not blocking for Quant.

**Reasoning:** Although this patent employs Bayesian statistics and Hardy-Weinberg equilibrium principles to estimate disease risk from genetic variants, it fundamentally differs from Quant’s unique integration of observed and missing variant data (TP, FN, etc.) to compute posterior probabilities of complete genetic diagnoses. The patent describes polygenic risk assessment for type II diabetes based on OR-weighted SNP sums and population prevalence, lacking the key Quant innovations of integrating variant-level priors with patient-specific variant observations and uncertainty quantification for diagnostic confidence.
