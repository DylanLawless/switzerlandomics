## Patent/Publication Analysis

### Reference #1

- **Title:** Genetic and environmental risk engine and methods thereof  
- **Publication No.:** US9910962B1  
- **Publication Date:** 2018-03-06  
- **Link:** https://patents.google.com/patent/US9910962B1/en

#### Abstract (excerpt)

> "Risk engines and related methods may benefit patients and their physicians. For example, patients may benefit from being able to determine their personal genetic, environmental, and behavioral risks. Moreover, physicians may be able to provide statistically-driven individual recommendations based on a risk engine's determination of such risks."

#### Relevant Overlaps

- Uses genetic variant data including SNPs and haplotypes to compute individual genetic risk of developing diseases.
- Performs variant selection by scoring genetic associations from literature to identify robust genetic variants.
- Uses linkage disequilibrium (LD) blocks to select representative variants to avoid redundancy.
- Calculates odds ratios (OR) for genotypes and haplotypes, incorporating population frequency data.
- Aggregates genetic risk with environmental and behavioral risk factors to provide an overall risk assessment.
- Uses statistical models and population data to calculate risk estimates.
- Provides personalized disease risk estimates and behavior modification recommendations.
- Includes calculation of confidence or strength of risk estimates.
- Utilizes data structures for storing variant ORs, frequencies, and risk factor statistics.
- Applies integration of multiple risk factors (genetic, environmental, behavioral) to compute aggregated lifetime risk.
- Provides a system to track patient progress and deliver recommendations.

#### Key Differences

- Does not compute genome-wide *prior probabilities* of pathogenic variant observation under Hardy-Weinberg Equilibrium.
- Does not explicitly model false negative rates or unobserved variants to calculate a Bayesian *posterior probability* of a complete genetic diagnosis.
- Focuses primarily on the risk of *developing a disease* based on presence of variants (and environmental factors) rather than quantifying certainty of *having a complete genetic diagnosis*.
- Uses odds ratios derived from replicated genetic associations and population frequencies for risk estimation rather than integrated Bayesian posterior probabilities incorporating TP, FP, FN, TN outcomes across genes.
- Aggregates risk factors for multifactorial diseases at a phenotype level, rather than computing gene- or variant-level diagnostic probability credible intervals.
- The statistical risk engine is oriented towards prediction and behavioral recommendations, not diagnostic certainty assessment or credible intervals of variant pathogenicity.
- Does not appear to incorporate explicit modeling of inheritance modes (dominant, recessive, X-linked) affecting variant observation probabilities.
- Lacks integration of observed/missing variant data in cases or controls to quantify diagnostic uncertainty.

#### Conclusion

Not blocking for Quant.

While this patent discloses comprehensive genetic and environmental risk estimation using odds ratios and variant selection for disease risk, it does not address or claim Quant’s unique innovations of calculating genome-wide prior pathogenic variant observation probabilities under Hardy-Weinberg Equilibrium, nor the Bayesian integration of true positive and false negative variant observations to produce credible intervals quantifying confidence in a *genetic diagnosis*. This difference in core theoretical approach and output focus supports a conclusion of no blocking overlap.
