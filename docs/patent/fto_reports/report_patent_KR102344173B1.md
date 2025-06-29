## Patent/Publication Analysis

### Reference #1

- **Title:** Coronary Disease Prediction methods using clinical and genetic Risk score in Korean and method for suggesting diagnosis related to Coronary Disease
- **Publication No.:** KR102344173B1
- **Publication Date:** [Not explicitly given, accessed online]
- **Link:** https://patents.google.com/patent/KR102344173B1/en

#### Abstract (excerpt)

> "The present invention relates to a method for predicting the probability of developing the coronary artery disease by integrating clinical information and genetic mutation information of Koreans. More specifically, provided is a method for recommending related tests, which predicts the probability of developing the coronary artery disease at a specific time in Koreans using a disease prediction model built by integrating SNP marker mutation information and clinical information."

#### Relevant Overlaps

- Use of genotype scores (GS) derived from SNP genotypes (rs4977574, rs1122608, rs1165669).
- Assignment of weights to each SNP to derive a combined SNP point score.
- Integration of weighted SNP points with weighted clinical information to predict disease probability using a Cox proportional hazards model.
- Calculation of a disease onset probability at a specific time point via a hazard function formula.
- Use of genetic markers and clinical data to estimate a personalized probability of disease.
- Generation of reports including risk estimates to support clinical decision-making.
- Use of statistical methods (likelihood ratio tests, proportional hazard assumptions) to validate model predictors.
- The technology integrates genetic risk factors with clinical risk factors to predict disease within a defined timeframe.
- Provides actionable outputs including disease probability and recommendations for additional tests or management advice.
- Use of additive genetic models for SNP risk scoring.

#### Key Differences

- Does not include explicit modeling or incorporation of false negatives or missing variant data.
- No description of using a Bayesian framework to integrate prior population variant probabilities with observed patient variant calls.
- Focuses on direct risk prediction for coronary artery disease by weighted combination of SNPs and clinical factors rather than calculating genome-wide gene-level prior probabilities under Hardy-Weinberg Equilibrium.
- Outputs a risk score / probability for disease onset but does not quantify diagnostic certainty or credible intervals that reflect uncertainty.
- Uses traditional survival analysis methods (Cox proportional hazards model), not a Bayesian posterior probability framework.
- The SNP scoring is limited to a few selected SNPs relevant to coronary artery disease, not genome-wide or across all genes.
- The method applies primarily in population-specific (Korean) coronary artery disease context, not genome-wide variant pathogenicity.
- No mention or use of true positive, false negative, true negative, false positive classification probabilities in model.
- Does not quantify confidence of a complete genetic diagnosis accounting for sequencing coverage gaps or missing variants.

#### Conclusion

Not blocking for Quant.

**Rationale:**

Although this patent uses genetic variants combined with clinical risk factors to predict disease probability, it fundamentally differs from Quant’s innovation. Quant uniquely focuses on Bayesian integration of genome-wide prior probabilities of pathogenic variants with observed patient variant data, explicitly modeling false negatives and uncertainty (credible intervals) in diagnostic confidence. This patent is limited to statistical modeling of a small SNP panel for coronary artery disease risk prediction in a specific population using classical survival analysis, without addressing the comprehensive genome-wide Bayesian diagnostic probability and false negative integration central to Quant.
