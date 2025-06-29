## Patent/Publication Analysis

### Reference #1

- **Title:** SNPs site combination, model and system for predicting risk of plateau pulmonary edema
- **Publication No.:** CN115961020A
- **Publication Date:** 2023-04-11
- **Link:** https://patents.google.com/patent/CN115961020A/en

#### Abstract (excerpt)

> "According to the invention, 13 HAPE protective SNPs sites and 7 dangerous SNPs sites are brought into the risk prediction model of plateau pulmonary edema, and the model can predict the risk degree of the plateau pulmonary edema of the person to be detected, so that the occurrence of HAPE can be effectively prevented..."

#### Relevant Overlaps

- Use of single nucleotide polymorphisms (SNPs) genotype data for disease risk prediction.
- Construction of a predictive model using weighted risk scores derived from regression coefficients corresponding to individual SNP genotypes.
- Use of logistic regression modeling with penalization (Lasso) to select SNP predictors and generate weighted risk scores.
- Model outputs a quantitative Risk Score intended to stratify subjects into risk categories (high, intermediate, low).
- Inclusion of performance metrics such as AUC, sensitivity (TPR), specificity (FPR), and calibration curves to assess predictive performance.
- Reference to true positive (TP), false positive (FP), true negative (TN), false negative (FN) classifications and calculation of sensitivity and specificity.
- Visualization of predictive model via a nomogram based on regression coefficients.

#### Key Differences

- This invention focuses on prediction of disease risk **from a fixed combination of specific SNPs** relevant to a single disease (high altitude pulmonary edema).
- The model predicts individual's risk score based solely on observed genotype data using classical regression; does not incorporate prior probabilities of variant pathogenicity or genome-wide context.
- Does not integrate genome-wide prior allele frequencies or inheritance modes (e.g., Hardy-Weinberg Equilibrium modeling).
- Does not explicitly model false negatives arising from unobserved or missing variants or sequencing coverage gaps.
- No Bayesian framework combining prior probabilities with patient-specific variant observation or absence information.
- Focus is on risk scoring for a specific disease, not on quantifying the probability of a **complete genetic diagnosis** across modes of inheritance for any gene.
- No credible interval or uncertainty quantification regarding diagnostic confidence.
- Uses standard statistical machine learning (Lasso Logistic regression) for feature selection and risk scoring without integration of variant-level pathogenicity priors.
- Disease risk is a function of observed genotype combinations only; no modeling of unobserved genetic data.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** Although the patent mentions sensitivity, specificity, and outlines true positive/false negative concepts from ROC analysis terminology, these terms are used in the context of standard risk prediction model evaluation metrics on observed genotype data only. The patented model builds a weighted logistic regression risk score for a specific disease based on selected SNPs, lacking the genome-wide Bayesian integration of prior pathogenic variant probability and explicit false negative modeling that define Quant’s innovation. The technical approaches and objectives are fundamentally different in scope and methodology.
