## Patent/Publication Analysis

### Reference #1

- **Title:** Family coronary heart disease risk assessment and risk factor identification system
- **Publication No.:** CN113593630A
- **Publication Date:** 2022-02-08
- **Link:** https://patents.google.com/patent/CN113593630A/en

#### Abstract (excerpt)

> "The device for evaluating the family coronary heart disease risk and identifying the risk factors thereof comprises a data collecting and sorting module, a multi-gene risk score calculating module, a personal risk prediction model building module, a family risk prediction model building module and a favorable and harmful factor evaluating module for specific diseases... based on sample genotype data, a multi-gene risk scoring algorithm is adopted to calculate sample personal risk scores, a prediction model is built through a machine learning algorithm, the risk evaluation of the family is given through calculating the average risk of the family..."

#### Relevant Overlaps

- Uses whole genome genotype data and GWAS data to calculate individual polygenic risk scores (PRS).
- Builds personal and family disease risk prediction models using machine learning approaches (logistic regression, SVM, random forest, etc.).
- Establishes family risk prediction based on the average individual risk in families.
- Utilizes genotype imputation, quality control, and linkage disequilibrium reference to calculate PRS (via LDpred).
- Incorporates family genetic relationships by constructing family maps via KING software.
- Applies Mendelian randomization to identify causal non-genetic risk factors associated with disease.
- The invention uses population genomic data for risk prediction and aggregates predictions at a family level.

#### Key Differences

- The system predicts risk scores primarily for coronary heart disease using PRS and machine learning classification models rather than estimating probabilities of variant pathogenicity per se.
- Focuses on polygenic risk modeling (PRS) for a complex disease, rather than calculating probabilistic confidence of a complete genetic diagnosis of rare Mendelian disease variants.
- Does not explicitly model or integrate true positive (TP), false negative (FN), true negative (TN), and false positive (FP) variant observation outcomes in a Bayesian framework.
- Does not generate posterior probabilities of harboring disease-causing variants accounting for unobserved variant detection uncertainty or sequencing coverage gaps.
- Family risk is evaluated via averaging individual risk scores and genetic relatedness, without quantifying posterior diagnostic confidence intervals.
- Uses machine learning classifiers for disease risk prediction, trained on PRS and demographic features, instead of Bayesian integration of prior probabilities with observed and missing variant evidence.
- Mendelian randomization for environmental/exposure factors is unrelated to variant-level diagnosis certainty modeling.
- Disease focus is coronary heart disease, a complex polygenic trait, whereas Quant targets rare Mendelian disorders and variant-level pathogenicity integration genome-wide.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** This patent discloses polygenic risk score-based prediction for coronary heart disease using machine learning on genotype data aggregated at the family level, complemented by Mendelian randomization for exposure factor causal analysis. It does not address the computation of Bayesian posterior probabilities integrating TP, FN, TN, FP variant outcomes, nor does it quantify diagnostic confidence intervals for rare variant pathogenicity across all genes and inheritance modes as Quant does. The conceptual and methodological approaches differ significantly, with the patent focused on polygenic risk prediction rather than genome-wide variant probability estimation and diagnosis certainty quantification.
