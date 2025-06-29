## Patent/Publication Analysis

### Reference #1

- **Title:** A computer-implemented method, a system and computer programs for characterization of pathologies
- **Publication No.:** EP4398132A1
- **Publication Date:** 2023-07-19
- **Link:** https://patents.google.com/patent/EP4398132A1/en

#### Abstract (excerpt)

> "A method, system and computer programs for characterization of pathologies are provided. The method comprises accessing or receiving image data and clinical and demographic data and/or genomic information, ... computing radiomic features ... embedding the computed radiomic features and the clinical and demographic data and/or genomic information in an abstract space representing the lesion; performing a characterization of the lesion at different levels ... and transforming the provided multi-diagnostic and/or -prognostic characterization of the lesion into radiological words or annotations using deep learning or machine learning algorithms."

#### Relevant Overlaps

- Use of genomic information integrated with clinical and imaging data.
- Application of machine learning/deep learning for multi-level diagnostic characterization.
- Use of Bayesian or probabilistic learning approaches (e.g., multi-objective evolutionary computation) for hyperparameter optimization.
- Processing structured cohorts and imaging data for disease-related classification or diagnosis.
- Incorporation of clinical and demographic data for personalized disease characterization.

#### Key Differences

- Focuses on radiomics and radiogenomics applied to image-based lesion characterization (mainly cancer nodules, e.g. lung nodules) using 2D/3D scans (CT, PET, MRI).
- The core method derives radiomic feature embeddings representing lesions, then applies classifiers or regressors for malignancy, histology typology, treatment suggestions, and epigenomic associations.
- Does not describe or claim estimation of prior probabilities of disease-causing variants genome-wide.
- Does not integrate prior genetic variant probabilities with observed/missing variant calls to compute Bayesian posterior probabilities of a complete genetic diagnosis.
- No explicit modeling of false negatives or variant observation probabilities under Hardy-Weinberg Equilibrium.
- No mention of gene-level aggregation of variant pathogenicity probabilities or credible intervals quantifying diagnostic uncertainty.
- Outputs focus on imaging lesion characterization and radiological report annotations, rather than direct genetic diagnosis confidence scores.
- Hyperparameter optimization concerns neural network architecture or loss weighting, unrelated to integrating variant probabilities or genetics-based diagnostic certainty.
- The technology is oriented toward multi-modal imaging and clinical data interpretation, not genome-wide variant probability quantification or genetic diagnostic certainty.

#### Conclusion

Not blocking for Quant.

---

**Summary:**

This patent addresses a distinct problem domain — radiomics-based lesion characterization using medical imaging combined with clinical/genomic annotations focused on lesion pathology prediction. Although it uses machine learning methods and genomic data integration, it does not deal with genome-wide variant pathogenicity probability modeling, Bayesian integration of variant priors and observations, nor the quantification of diagnostic certainty via posterior probabilities considering false negatives. Therefore, it does not overlap with Quant’s core innovation centered on genome-wide genetic variant probability modeling and diagnostic confidence estimation.
