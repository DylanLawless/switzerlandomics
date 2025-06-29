## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for discriminating between clonal hematopoiesis-derived and tumor-derived variants
- **Publication No.:** WO2025106583A1
- **Publication Date:** 2024-03-14
- **Link:** https://patents.google.com/patent/WO2025106583A1/en

#### Abstract (excerpt)

> "This disclosure describes novel methods and systems for discriminating between tumor-origin variants and clonal hematopoiesis (CH)-derived variants across solid tumors and NGS sequencing platforms. The disclosed methods and systems utilize a machine learning model that integrates fragment-level, variant-level, and patient-level features, allowing for predicting tumor vs. CH variant origin using plasma-only sequencing without additional white blood cell (WBC) or tumor sequencing."

#### Relevant Overlaps

- Use of variant- and patient-level features derived from genome sequencing data.
- Integration of multiple data layers (fragment-level, variant-level, patient-level) into a machine learning classifier to predict the biological origin of variants.
- Prediction of variant classification scores using advanced machine learning classifiers including XGBoost.
- Employing variant allele frequency (VAF) and related measures in variant interpretation.
- Application in clinical diagnosis contexts based on computed variant-origin probabilities.
- Use of probabilistic classification to assign variants to discrete categories based on thresholds.
- Processing of next-generation sequencing (NGS) data to extract features associated with variants.
- Use of genomic annotations from public datasets (e.g. COSMIC).
- No reliance on matched tissue sequencing for variant origin determination.
- System and method claims include computing classification scores and making binary predictions for variant origin.

#### Key Differences

- The patent focuses on discriminating **clonal hematopoiesis-derived variants from tumor-derived variants** in plasma cfDNA, a specific biological classification problem in liquid biopsy.
- It uses a machine learning classification framework to label variants as CH or tumor origin.
- Quant’s core innovation is Bayesian integration of genome-wide prior probabilities with observed/missing variant data to compute **posterior probabilities of complete genetic diagnosis** — accounting for true positives, false negatives, and credible intervals of diagnostic confidence.
- Quant explicitly models the probability of missing pathogenic variants and inheritance modes across the genome; the patent does not address genome-wide probabilistic prior/posterior modeling or assessing false negatives in a Bayesian framework.
- The patent’s use of machine learning classification scores for individual variant origin determination is distinguishable from Quant’s method of integrating variant-level priors with patient-specific evidence for probabilistic diagnostic confidence posteriors.
- Quant’s innovation is not limited to variant origin classification but quantifies **overall diagnostic confidence for disease causation across all genes and variants**, including uncertainty intervals, which is absent here.
- The patent does not mention or claim likelihoods over diagnostic completeness or genetic diagnosis certainty, nor does it integrate possible false negative variant observations in sequencing data.
- The patent is specifically targeted to the oncology space and liquid biopsy; Quant is a genome-wide variant probability platform broadly targeting Mendelian disease diagnostic certainty.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While both Quant and the patent involve interpreting genetic variant data using machine learning and statistical approaches, the patent’s subject matter is narrowly focused on distinguishing clonal hematopoiesis-derived variants from tumor-derived variants in cfDNA for oncology applications. The method relies on machine learning classification based on fragmentomic and variant features to identify variant origin.

In contrast, Quant’s novelty lies in its unique Bayesian framework that integrates genome-wide variant prior probabilities with observed patient data, models false negatives, incorporates inheritance modes, and outputs **posterior probability distributions reflecting certainty in a complete genetic diagnosis**. Quant is thus focused on diagnostic confidence for Mendelian disorders at the genome scale, not classification of variant source in cancer liquid biopsy.

Therefore, despite some superficial similarity in using variant features and machine learning, there is no substantial overlap with Quant’s core innovation on Bayesian diagnostic posterior probability modeling. The patent does not impair freedom to operate for Quant’s genome-wide diagnostic certainty methods.

---

# End of Analysis
