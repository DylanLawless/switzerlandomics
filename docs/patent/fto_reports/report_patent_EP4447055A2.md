## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for classifying genetic mutations detected in cell-free nucleic acids as tumor or non-tumor origin
- **Publication No.:** EP4447055A2
- **Publication Date:** 2022-07-20
- **Link:** https://patents.google.com/patent/EP4447055A2/en

#### Abstract (excerpt)

> "Provided herein are methods of differentiating tumor and non-tumor origin nucleic acid variants in cell-free nucleic acid (cfNA) samples... generating a tumor variant dataset comprising a population of reference tumor-related genetic variants... determining ratios of the frequency of observance data between the reference samples... generating a set of probabilities of non-tumor origin from the relative prevalence dataset... using the set of probabilities of non-tumor origin to differentiate nucleic acid variants detected in the cfNA sample... applying machine learning models to generate classifiers..."

#### Relevant Overlaps

- The patent describes computational methods to distinguish tumor-origin variants from non-tumor variants in cfNA samples, paralleling Quant’s goal of variant origin classification.
- Utilizes frequency of observance data in bodily fluid vs non-bodily fluid samples to generate relative prevalence datasets, which resemble Quant’s use of prior probabilities based on variant observation frequency.
- Incorporates mutant allele fraction (MAF) variation over multiple time points as a discriminative feature, similar to Quant’s integration of observed variant data and false negative assessment over time.
- Employs machine learning models (logistic regression, random forests, SVMs, neural networks) trained on features derived from prevalence ratios, MAF variation, and cancer type distribution, akin to Quant’s Bayesian integration combined with statistical modeling.
- The system outputs probabilities or credible intervals representing confidence in variant origin, which partly overlaps with Quant’s Bayesian posterior probabilities quantifying diagnosis certainty.
- References normalization techniques and data transformations for model training, paralleling Quant’s data preparation steps.
- The patented method produces a classification report and supports therapeutic decision-making based on variant origin, related to Quant’s clinical interpretation aims.

#### Key Differences

- The patent focuses predominantly on tumor vs non-tumor origin classification of somatic variants detected in cfNA using frequency ratios and machine learning classifiers; it primarily addresses variant origin in liquid biopsy cancer detection context.
- Quant uniquely integrates genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg Equilibrium across all genes and inheritance modes, which is not addressed in this patent.
- Quant explicitly models false negative probabilities (e.g., missing/unobserved variants) to derive Bayesian posterior probability of a *complete* genetic diagnosis, while the patent analyzes variant origin classification at the individual variant level without such global genome-wide diagnostic certainty modeling.
- Quant provides credible intervals quantifying uncertainty around diagnostic probabilities, whereas the patent focuses on probability outputs for variant origin classification without quantifying diagnostic completeness or uncertainty intervals.
- Quant models mode of inheritance impacts on variant observation probabilities genome-wide, which is absent from this patent focused on tumor vs non-tumor origin in cfNA variants.
- The subject matter differs in application scope: Quant targets genome-wide variant diagnosis confidence for rare disease genetics and clinical variant interpretation broadly, while the patent concentrates on tumor vs non-tumor variant discrimination in oncology cfNA.
- No use of true positive (TP), false positive (FP), true negative (TN), and false negative (FN) categories to infer posterior probability of diagnostic completeness as done by Quant; the patent mainly uses observed variant data frequencies and statistical classifiers.
- The patent’s methodology depends on constructing relative prevalence between sample types rather than integrating prior probabilities with patient-level observed/missing variant data in a Bayesian framework.

#### Conclusion

Not blocking for Quant.

The patent overlaps generally in using machine learning to classify variant origin from cfNA samples based on prevalence and allele fraction features. However, it does not teach or suggest the exact Quant innovation of genome-wide Bayesian modeling of prior disease-causing variant probabilities integrated with observed and unobserved variant data (TP, FN probabilities) to estimate the confidence of a complete genetic diagnosis accounting for inheritance modes. The focus on tumor vs non-tumor origin classification using relative prevalence and machine learning models is related but does not overlap with the core novel theory or computational framework of Quant.
