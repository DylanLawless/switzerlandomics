## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for identifying an origin of a variant
- **Publication No.:** US20250201344A1
- **Publication Date:** 2025-07-31
- **Link:** https://patents.google.com/patent/US20250201344A1/en

#### Abstract (excerpt)

> "Abstract Provided herein are methods for differentiating tumor and non-tumor (e.g., clonal hematopoiesis of indeterminate potential (CHIP)) origin nucleic acid variants from one another in a test sample obtained from a test subject at least partially using a computer."

#### Relevant Overlaps

- Uses a machine learning approach to classify nucleic acid variants as tumor-derived or non-tumor derived (CHIP origin) by integrating variant-level features, fragmentomics, and epigenetic (methylation) data.
- Employs variant allele fraction (VAF), methylation patterns, fragment length, clonality measures, and population allele frequencies among a variety of features for variant classification.
- Utilizes a training set with labeled tumor and non-tumor samples to generate a predictive (machine learning) model that classifies the origin of variants.
- Incorporates false positive and false negative concepts to tune classifier performance (sensitivity and specificity), including use of statistical metrics like false discovery rate and correlation filtering among features.
- Applies Bayesian networks and other ML algorithms as part of the predictive model training.
- Provides a computational pipeline to generate a posterior probability of variant origin (tumor or CHIP).
- The method is applicable to cell-free DNA (cfDNA) from plasma and uses multi-modal data to improve variant call adjudication.
- Includes explicit integration of epigenetic signatures (e.g., methylation states, fragmentomics) alongside genomic variant data for origin determination.
- Uses variant-level population allele frequency data (e.g., gnomAD), gene panels, and variant clonality to weigh predictions.
- Feature engineering includes complex multi-feature classifiers that combine genetic and epigenetic data to generate a likelihood that a variant is tumor-derived.
- The method can produce reports regarding variant origin classification for clinical decision-making, including therapy recommendations based on tumor-derived variants.

#### Key Differences

- The patent focuses on classifying individual variants as tumor-derived or CHIP origin based on machine learning integration of variant, fragmentomic, and epigenetic features.
- It does not address genome-wide **prior probability calculations** of observing pathogenic variants across all genes under Hardy-Weinberg Equilibrium.
- It does not explicitly model or calculate false negatives or unobserved variant data to generate a Bayesian posterior probability of a **complete genetic diagnosis** as a whole, but rather focuses on variant origin classification.
- The Bayesian methods invoked are used within machine learning classifier frameworks, primarily for tumor vs. non-tumor variant origin prediction, not for integrating prior probabilities and observed genotype data at a genome-wide or gene-wide level for diagnosis certainty quantification.
- Quant’s unique feature of integrating prior pathogenic variant probabilities with patient-specific observed/missing variant data to quantify confidence intervals and credible intervals for diagnostic certainty is not addressed.
- The emphasis is on differentiating tumor versus CHIP variants to avoid confounding factors in liquid biopsy assays rather than estimating probability of disease-causing variant presence per se.
- The invention does not offer a genome-wide probabilistic framework aggregating variant-level priors and patient variant calls for an overall Bayesian assessment of disease-causing variant presence.
- Many disclosed features, such as use of Bayesian networks for tumor origin prediction, do not parallel Quant’s core innovation of modeling TP, FP, FN, and TN outcomes to produce genome-wide diagnostic certainty with credible intervals.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While this patent shares superficial aspects with Quant in the use of Bayesian or machine learning methods and incorporates variant-level allele frequencies and epigenetic/fragmentomic data, it fundamentally differs in purpose and technical approach. The patent is focused on classifying the **origin of individual variants** (tumor vs. CHIP), employing feature-rich ML models trained on labeled variant data. Quant uniquely models genome-wide **prior probabilities** of disease-causing variants, integrates these priors with observed patient variants and explicitly models **false negatives and missing data** to compute a **Bayesian posterior probability of a complete genetic diagnosis with credible intervals**.

This distinction in the theoretical framework and technical goals means this patent does not pose a blocking risk to Quant’s method, which occupies a different conceptual and computational niche in genome-wide variant probability estimation and diagnostic confidence quantification.
