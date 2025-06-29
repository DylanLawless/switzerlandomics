## Patent/Publication Analysis

### Reference #1

- **Title:** Sequence variation analysis method and system, and storage medium
- **Publication No.:** WO2023087277A1
- **Publication Date:** 2023-05-04
- **Link:** https://patents.google.com/patent/WO2023087277A1/en

#### Abstract (excerpt)

> "The sequence variation analysis method comprises the following steps: acquiring sequence variation data to be subjected to analysis; performing feature extraction on said sequence variation data, so as to obtain a first variation feature set and a second variation feature set; inputting the first variation feature set into a trained first phenotype relationship prediction model, so as to obtain a first phenotype relationship prediction result, and inputting the second variation feature set into a trained second phenotype relationship prediction model, so as to obtain a second phenotype relationship prediction result; and taking a union of the first phenotype relationship prediction result and the second phenotype relationship prediction result, so as to obtain a third phenotype relationship prediction result."

#### Relevant Overlaps

- The patent focuses on sequence variation analysis using two separately trained phenotype relationship prediction models (machine learning based), whose prediction results are combined by union to improve pathogenicity classification.
- Uses multiple public variant databases (ClinVar, HGMD, dbNSFP, gnomAD) for feature extraction similar to Quant’s use of these data.
- Employs machine learning models such as logistic regression and neural networks for predicting the phenotypic effect (pathogenicity) of variants.
- The method includes filtering variants based on repeat regions and allele frequency, annotation of complex variants, and prediction of variant types (homozygous, heterozygous, no variation) with associated probabilities.
- The data-driven approach and the models aim to improve the accuracy and reduce manual curation by predicting the credibility of variant interpretations.
- Provides variant-level pathogenicity predictions and supports review priorities based on these predictions.

#### Key Differences

- This patent’s core innovation lies in variant-level phenotypic relationship (pathogenicity) prediction using two complementary machine learning models and filtering strategies to improve variant classification and manual review workload.
- Quant’s unique novelty is not primarily at predicting variant-level pathogenicity classification but in **modeling genome-wide prior probabilities of pathogenic variants, integrating observed and missing variant data (accounting for false negatives), and computing Bayesian posterior probabilities for the overall likelihood of a complete genetic diagnosis per patient**.
- The patent does not describe or claim genome-wide prior probability calculations under Hardy-Weinberg Equilibrium, nor explicit Bayesian integration of TP, FP, TN, FN variant observation states to estimate diagnostic confidence.
- No indication of producing credible intervals or uncertainty bounds regarding the completeness of the genetic diagnosis.
- The patent focuses on variant scoring/classification enhancement and filtering, whereas Quant focuses on combining population genetics priors and patient-level observed/missing data for diagnostic certainty.
- The use of union of two model outputs is a consensus classification technique rather than a Bayesian posterior probability model integrating prior and data likelihoods.
- No modeling of inheritance modes’ impact on variant observation or genome-wide aggregation of probabilities into gene-level or diagnosis-level probabilities.
- Variant type prediction (classifying homozygous, heterozygous, or no variant) is a separate component not found in Quant’s methods.

#### Conclusion

Not blocking for Quant.

---

**Summary:** Although both Quant and this patent rely on public variant and annotation databases and employ machine learning for variant-level prediction tasks, the patent’s inventions differ substantially in focus and technical approach. The patent does not address or claim Quant’s core innovation of integrating population-level prior probabilities with observed and unobserved variant data in a Bayesian framework to compute the confidence of a comprehensive genetic diagnosis, including explicit false negative modeling. Hence, this patent does not block Quant’s freedom to operate.
