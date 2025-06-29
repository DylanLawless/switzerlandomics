## Patent/Publication Analysis

### Reference #1

- **Title:** Validation of a bioinformatic model for classifying non-tumor variants in a cell-free DNA liquid biopsy assay
- **Publication No.:** AU2023379633A1
- **Publication Date:** 2023-11-16 (priority Nov 2022)
- **Link:** https://patents.google.com/patent/AU2023379633A1/en

#### Abstract (excerpt)

> "Abstract Provided herein are methods of differentiating tumor and non-tumor origin nucleic acid variants in cell-free nucleic acid (cfNA) samples… generating a tumor variant dataset comprising a population of reference tumor-related genetic variants in which the tumor variant dataset comprises frequency of observance data among reference samples… determining ratios of the frequency of observance data between the reference samples for tumor-related genetic variants… producing a relative prevalence dataset… generating at least one set of probabilities of non-tumor origin from the relative prevalence dataset, and using the set of probabilities of non-tumor origin to differentiate nucleic acid variants detected in the cfNA sample as being tumor origin or non-tumor origin variants."

#### Relevant Overlaps

- Use of population-level tumor variant datasets including frequency of variant observance in different biological sample types (plasma only vs. white blood cells).
- Calculation of ratios of observance frequencies between sample types to generate relative prevalence or mutant allele fraction variance datasets.
- Generation of probabilistic classifiers (including machine learning models such as logistic regression) to assign variants as tumor origin or non-tumor origin (e.g., clonal hematopoiesis).
- Use of time-series MAF variation, uniformity of prevalence across tumor types, and prevalence in hematological malignancies as classification features.
- Applying trained probabilistic or ML models to classify variants detected from patient cfNA samples.
- Provides reports/classifications indicating tumor vs. non-tumor origin.
- Use of large plasma and tissue reference datasets for model training and validation.
- Differentiation is at the variant level but integrates multiple data-driven features to produce probabilities of non-tumor origin.
- Logistic regression or ensemble ML models to generate probabilities associating tumor/non-tumor origin.
- The method improves cancer mutation calling from cfNA without requiring matched WBC sequencing.

#### Key Differences

- The patent focuses on differentiating *tumor* versus *non-tumor* variant *origin* in cfNA samples, primarily resolving clonal hematopoiesis noise in cancer liquid biopsies.
- Quant’s innovation centers on *quantifying the probability of complete genetic diagnosis*, explicitly integrating prior pathogenic variant occurrence probabilities across the genome, sequencing coverage, and false negative rates, producing Bayesian posterior probabilities of *genetic diagnosis certainty*.
- The patent does not describe Bayesian integration of prior probabilities with observed/missing variant data across all genes and inheritance modes to produce credible intervals of diagnosis confidence.
- The patent centers on variant-level tumor/non-tumor classification rather than gene-level diagnosis confidence.
- The patent classifies variant origin probabilistically but does not address modeling false negatives or deriving confidence levels for *complete diagnosis* (i.e., does not integrate TP, FN rates into a Bayesian posterior probability of diagnosis).
- Quant is designed genome-wide with mode of inheritance considerations; the patent focuses on tumor vs. non-tumor variant origins mainly in cancer liquid biopsy contexts.
- The patent uses ML classifiers trained on observed variant prevalence ratios and features; Quant uses Bayesian modeling integrating prior probabilities from population genetics assumptions (HWE), inheritance mode, and sequencing data.
- The patent does not claim nor describe use of TP, FP, TN, FN classification statistics to compute diagnostic posterior probabilities or credible intervals.
- Quant’s unique mathematical modeling framework and genome-wide prior to posterior integration for *diagnosis certainty* is not present here.
- The focus here is classification of variant origin, not variant pathogenicity scoring or overall diagnostic certainty quantification.

#### Conclusion

**Not blocking for Quant.**

*Rationale:* Although this patent and Quant both use probabilistic or ML models and population-level variant frequency data, this patent focuses on classification of tumor vs. non-tumor variant origin in cfNA primarily through frequency ratio features and ML classifiers. Quant, in contrast, fundamentally advances Bayesian integration of prior probabilities and observed/missing variant data across all genes and inheritance modes to yield a posterior probability of complete genetic diagnosis along with credible intervals. There is no overlap with Quant’s explicit use of TP, FN statistics or integration of Hardy-Weinberg equilibrium-based prior probabilities for diagnosis confidence. The technical concepts are related but differ substantially in scope, methodology, and purpose.
