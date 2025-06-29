## Patent/Publication Analysis

### Reference #1

- **Title:** Germ line locus variation pathogenicity prediction method, device, terminal and medium
- **Publication No.:** CN115631791A
- **Publication Date:** 2023-08-04
- **Link:** https://patents.google.com/patent/CN115631791A/en

#### Abstract (excerpt)

> "…obtaining a model training data set by assigning values to variation locus data and carrying out functional annotation, a CNN-XGboost model for predicting the variation pathogenicity of the embryonic system locus is obtained by training through using an optimized unique loss function… The prediction model provided by the invention can assist in interpretation of gene mutation sites… improve accuracy of interpretation of the mutation sites and assist clinical decisions of doctors… the pathogenicity of the genetic variation site in the target region can be predicted through a model at the initial stage of product design, the design and optimization of the gene panel are assisted…"

#### Relevant Overlaps

- Both Quant and the patent utilize variant data annotated with genetic variant indicators including pathogenicity.
- Use of functional annotations and public variant databases (e.g., ClinVar) is common to both.
- Both involve predictive modeling to determine variant pathogenicity.
- The patent discloses a machine learning model integrating convolutional neural networks (CNN) and XGBoost with a custom loss function aimed at improving variant pathogenicity classification.
- Variant-level pathogenicity prediction is core to both.

#### Key Differences

- The patent solely focuses on **predicting pathogenicity of individual germline variants** using a CNN-XGBoost classifier.
- Quant’s novelty is on **integrating prior probabilities of variant observation under inheritance models with observed patient data (including false negatives) to derive a Bayesian posterior probability quantifying confidence of a complete genetic diagnosis**.
- Quant models gene-level and genome-wide prior probabilities incorporating inheritance mode and Hardy-Weinberg expectations, while the patent does not address prior probability modeling or diagnostic confidence.
- The patent does not consider false negative rates or unobserved variants in patients; it focuses on variant pathogenicity classification.
- Quant explicitly models the full diagnostic uncertainty (credible intervals), which is absent in the patent.
- The patent’s loss function and training scheme aim to improve classification accuracy, not to perform Bayesian integration of observed and missing data.

#### Conclusion

Not blocking for Quant.

---

**Summary:** This patent describes a machine learning method (CNN-XGBoost) for classifying whether individual germline variants are pathogenic, based on annotated variant datasets. Quant differs fundamentally as it does not stop at pathogenicity classification but uniquely quantifies prior probabilities and integrates patient variant observation uncertainty (including false negatives) in a Bayesian framework to compute posterior probabilities for genetic diagnosis certainty. Thus, while both handle variant pathogenicity predictions, the patent does not overlap with Quant’s core innovation regarding Bayesian diagnostic confidence integrating prior probabilities and missing data.
