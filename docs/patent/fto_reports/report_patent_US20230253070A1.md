## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and Methods for Detecting Cellular Pathway Dysregulation in Cancer Specimens
- **Publication No.:** US20230253070A1
- **Publication Date:** 2023-08-10
- **Link:** https://patents.google.com/patent/US20230253070A1/en

#### Abstract (excerpt)

> "Disclosed herein are systems, methods, and compositions useful for determining cellular pathway disruption comprising the use of RNA expression level information. ... This determined level of disruption can be used to (1) assist in the identification of genetic variants that alter pathway activity, (2) correlate identified variants with disease state and disease progression, and (3) identify therapeutics most likely to be effective and therapeutics that should be avoided."

#### Relevant Overlaps

- Both Quant and this patent integrate RNA expression data and genetic variation data to infer pathway disruption or disease state.
- The patent focuses on training machine learning models using positive and negative control groups defined by genetic variation (including pathogenic variants) to detect pathway dysregulation.
- It includes constructing pathway modules (e.g., RAS/RTK and PI3K pathways subdivided into modules) and training regression models (e.g., logistic or elastic net) based on RNA-seq data.
- The use of transcriptome-derived pathway disruption scores to guide clinical diagnostics, therapy matching, and treatment response prediction is described.
- The patent addresses filtering of training data to control for confounders (e.g., cancer type), and iterative refinement of genetic variant sets contributing to the model.
- Explicit modeling of variants of unknown significance (VUS) via global dysregulation scores and integration of multi-module effects in pathway modeling.
- Scoring samples based on differential expression of gene sets associated with pathways/modules, and using these scores for patient stratification.
- Use of Bayesian or statistical methods for model training and evaluation, including cross-validation and threshold determination for dysregulation calling.
- Generation of credible intervals and confidence metrics for pathway disruption scores is mentioned.
- Incorporation of large public datasets (e.g., TCGA) and clinical outcomes data for validation and model training.
- The workflow from data inputs (VCF, RNAseq, annotations), through feature selection, model training, to clinical reporting parallels Quant’s data flow.
- Use of multi-omic input (DNA variants, RNA expression, methylation) integrated via machine learning into pathway disruption probability outputs.

#### Key Differences

- The patent focuses predominantly on identifying and scoring **cellular pathway dysregulation** at the *pathway/module* level using RNA expression patterns correlated with known pathogenic mutations.
- The core of Quant’s novelty is **genome-wide prior probabilities** of observing pathogenic variants **integrated via Bayesian models with observed/missing variant data** to produce **posterior probabilities of a complete genetic diagnosis**, explicitly modeling false negatives and all classification possibilities (TP, FP, TN, FN) at variant and gene levels.
- Quant uniquely quantifies **diagnostic certainty with credible intervals**, going beyond classification to probabilistic diagnosis confidence.
- The patent does not explicitly teach or claim the use of **prior probabilities of pathogenic variant occurrence genome-wide** or the *integration of prior probabilities with potential false negatives* to compute a Bayesian posterior probability of disease-causing variant observation.
- The patent does not address modeling **patient-level evidence synthesis of observed and unobserved variants to produce per-patient diagnosis probabilities**.
- The patent’s Bayesian or regression models are primarily used to assess **transcriptional dysregulation signatures** as a correlate of pathway disruption, not to compute genome-wide variant pathogenicity or diagnosis probabilities integrating prior expectations.
- Though it discusses treatment matching and therapy response, the method centers on **transcriptome-based pathway disruption inference**, not on **probability quantification of sequence variant pathogenicity or diagnosis completeness**.
- The patent appears to avoid detailed modeling of **TP, FP, TN, FN outcomes** in a probabilistic framework applied jointly at variant and gene levels, which is integral to Quant.
- Use of Bayesian credible intervals to reflect uncertainty on the **complete genetic diagnosis status** is unique to Quant.
- The patent emphasizes **machine learning classification** of pathway dysregulation rather than probabilistic variant-level diagnostics combining observed and missing data.

#### Conclusion

Potential overlap — recommend legal review.

---

### Summary

While US20230253070A1 and Quant both analyze genetic and transcriptomic data to infer disease-related changes, US20230253070A1 focuses on identifying transcriptional signatures of **pathway dysregulation** via machine learning on RNA expression using positive/negative cohorts defined by known pathogenic variants. It is essentially a **pathway-level classifier of transcriptional disruption**.

Quant’s core novelty is the **Bayesian integration of genome-wide prior probabilities for pathogenic variants with observed patient variant data**, including modeling **false negatives and deriving posterior probabilities of complete genetic diagnosis**, providing **credible intervals for diagnostic certainty**. This is a distinct theoretical and practical approach focused on **quantifying confidence in genetic diagnosis at the variant and gene levels genome-wide**, rather than primarily classification of transcriptional signatures of pathway disruption.

Thus, although superficially related in addressing genomic data and disease variant interpretation, the two methods do not substantially overlap in their core theories or technical implementations. However, due to some similarity in terminology and use of machine learning on genomic and transcriptomic data for clinical assessment, a legal review is recommended to clarify possible claims coverage and freedom to operate status for Quant.
