## Patent/Publication Analysis

### Reference #1

- **Title:** Population frequency modeling for quantitative variant pathogenicity estimation
- **Publication No.:** US20250069702A1
- **Publication Date:** 2025-[publication date not explicitly given, likely 2025 based on application timelines]
- **Link:** https://patents.google.com/patent/US20250069702A1/en

#### Abstract (excerpt)

> "Embodiments of the disclosed technologies apply a logistic regression model to a set of population data for a set of genes. The set of population data includes a set of features for a variant located at a position within a gene. The set of features includes at least one population frequency meta-feature. The at least one population frequency meta-feature quantifies predictive value of allele frequency in the gene. Using the first set of population data, a variant classification prediction output by the logistic regression model is evaluated based on an expected variant classification. The logistic regression model is adjusted until at least one first performance criterion is satisfied to produce a trained logistic regression model. The trained logistic regression model is capable of outputting variant pathogenicity estimates that satisfy at least one second performance criterion."

#### Relevant Overlaps

- Uses population allele frequency data (e.g., from gnomAD) for variant pathogenicity estimation.
- Incorporates gene-level, variant-level, position-level, and region-level features, including gene constraint metrics (like LOEUF), population substructure metrics (e.g., fixation index), and population frequency meta-features derived from transformations of these raw features.
- Applies a **logistic regression machine learning model** trained with labeled variant data (pathogenic/benign) to produce variant pathogenicity probability estimates.
- The model outputs **variant-level pathogenicity probabilities** that are calibrated and validated.
- The output probabilistic scores are integrated and can be input into variant classification frameworks like Sherloc to aid variant classification, including refining VUS calls.
- The model learns to adjust predictions implicitly for different inheritance patterns, severity, penetrance, and age of onset without explicit input of these attributes.
- The model operates over genome-wide variants with approximately 20-30 numerical features.
- Calibration curves, validation metrics (AUROC, Brier score), and decision boundary inspection are used to assess model accuracy.
- The system addresses challenges in variant classification using population data by quantitatively modeling allele frequency’s predictive value, overcoming limitations of hard frequency thresholds.
- The described model does **not explicitly integrate observed vs. missing patient-specific variant data** (e.g., true positives (TP), false negatives (FN), etc.) for individual genetic diagnosis confidence assessment.
- No mention of modeling diagnostic confidence integrating potential false negatives at the patient-level or providing credible intervals for whole-genome diagnosis certainty.
- The approach is at variant-level pathogenicity estimation rather than gene-level or patient-level Bayesian posterior probability of genetic diagnosis incorporating unobserved variants.

#### Key Differences

- This patent focuses on **variant-level classification** using machine learning trained on population allele frequency-derived features to predict pathogenicity probabilities.
- It does **not** describe or claim calculating **prior probabilities of pathogenic variants at the gene level under Hardy-Weinberg equilibrium**.
- It does **not explicitly integrate patient-specific observed variant data with potential false negative rates** to calculate a **Bayesian posterior probability of a complete genetic diagnosis**.
- The patent’s modeling is supervised learning of variant pathogenicity probabilities; it does not address false negative modeling or genome-wide diagnostic confidence with credible intervals.
- The patent does not incorporate TP, FN, TN, FP outcomes explicitly in the probabilistic modeling for diagnosis confidence.
- Quant’s novelty lies in the integration of prior probabilities with observed/missing patient variant data to quantify Bayesian posteriors of diagnosis certainty, which is not described here.
- The patent mentions integration with classification frameworks but only for scoring/pathogenicity classification, not diagnosis confidence estimation.

#### Conclusion

Not blocking for Quant.

---

**Summary:**

While the patent discloses an advanced logistic regression model to quantitatively estimate variant pathogenicity probabilities using population allele frequencies and meta-features, it focuses on improving variant classification rather than quantifying genome-wide disease-causing variant prior probabilities and integrating them with patient-specific observed and unobserved variant data (TP, FN) for Bayesian posterior probability of a genetic diagnosis. Therefore, this document does not overlap with Quant’s core inventive concept of diagnostic confidence estimation through Bayesian integration of prior and observed/missing data.
