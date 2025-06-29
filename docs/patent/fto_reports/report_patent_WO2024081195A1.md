## Patent/Publication Analysis

### Reference #1

- **Title:** Machine learning pipeline for genome-wide association studies
- **Publication No.:** WO2024081195A1
- **Publication Date:** 2024-03-28 (published date from Google Patents)
- **Link:** [https://patents.google.com/patent/WO2024081195A1/en](https://patents.google.com/patent/WO2024081195A1/en)

#### Abstract (excerpt)

> "Genome-wide association studies may allow for detection of variants that are statistically significantly associated with disease risk. However, inferring which are the genes underlying these variant associations may be difficult. The presently disclosed approaches utilize machine learning techniques to predict genes from genome-wide association study summary statistics that substantially improves causal gene identification in terms of both precision and recall compared to other techniques."

#### Relevant Overlaps

- The patent discloses a machine learning pipeline using neural networks to integrate variant-level and gene-level features to predict causal genes from GWAS summary statistics.
- Uses variant annotations, GWAS data, fine mapping, eQTLs, and gene-level features such as PoPS and MAGMA as inputs.
- Generates prediction scores for causal gene identification.
- Employs deep learning architectures (multiple neural network layers) and gradient boosting techniques.
- Focus on enhancing true positive rate (recall) and precision (true positives to declared positives ratio), including metrics like sensitivity and positive predictive value.
- Outputs probabilistic scores used for gene prioritization and potentially diagnostic or treatment decisions.
- The method includes identification of causal genes with statistically significant disease association.
- The method involves combining variant- and gene-level data in a unified pipeline.

#### Key Differences

- The patent focuses on predicting causal genes from GWAS summary statistics and variant/gene features across a population/sample set.
- Primarily a classification/prediction framework producing pathogenicity or association scores for genes, not for individual variants per patient.
- It does not address integrating prior probabilities under Hardy-Weinberg equilibrium or explicitly model false negatives or missing variants at the patient-level.
- No mention of producing Bayesian posterior probabilities quantifying diagnostic certainty considering false negatives or unobserved variants.
- No explicit modeling of the probability that a patient truly harbors a disease-causing variant accounting for observed/missing data (TP, FP, FN, TN).
- The approach is designed to prioritize genes broadly associated with disease risk, not to calculate credible intervals for genetic diagnosis confidence at an individual patient level.
- Focused on summary statistics and aggregate data rather than patient-specific genome-wide diagnostic probabilities.
- No explicit use of Bayesian inference integrating prior probabilities with observed variant calls and missing variant probabilities.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While this patent employs machine learning to predict causal genes from GWAS data and integrates various genomic features, it does not overlap with Quant’s unique innovation of calculating genome-wide prior probabilities combined with observed and false negative variant data to produce a Bayesian posterior probability of a complete genetic diagnosis in an individual. The patent’s focus is on gene-level association prediction and classification rather than patient-level diagnostic certainty and posterior probability estimation leveraging TP, FN, and Bayesian integration.
