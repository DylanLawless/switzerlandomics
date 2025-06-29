## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for classifying, prioritizing and interpreting genetic variants and therapies using a deep neural network  
- **Publication No.:** US11887696B2  
- **Publication Date:** 2023-11-07  
- **Link:** https://patents.google.com/patent/US11887696B2/en

#### Abstract (excerpt)

> "Described herein are systems and methods that receive as input a DNA or RNA sequence, extract features, and apply layers of processing units to compute one or more condition-specific cell variables, corresponding to cellular quantities measured under different conditions... The change in the condition-specific cell variables are used to compute a score for how deleterious a variant is, to classify a variant's level of deleteriousness, to prioritize variants for subsequent processing, and to compare a test variant to variants of known deleteriousness."

#### Relevant Overlaps

- Machine learning-based genetic variant analysis using deep neural networks with multiple layers.
- Processing of variant and reference DNA/RNA sequences as separate inputs to compute condition-specific predictions.
- Computation of variant-induced changes in cell variables by comparing predicted outputs for variant versus reference sequences.
- Scoring and classification of variants based on predicted changes in cellular metrics (e.g., splicing inclusion levels).
- Use of distance metrics (e.g., absolute difference, Kullback-Leibler divergence) to quantify variant effects.
- Multi-condition or tissue-specific modeling of variant effects.
- Ability to rank and prioritize genetic variants for pathogenicity.
- Analysis includes variant prioritization, classification, and interpretation based on learned models.
- Methods to identify which genetic features most contribute to changes in predicted cell variables.
- Capability to evaluate the effect of therapies and genome editing on variant-induced cellular changes.

#### Key Differences

- The patent focuses on deep learning models to predict **cellular intermediate variables** (such as splicing levels, protein-DNA binding specificity) from sequence context and uses these as proxy phenotypes to score deleteriousness.
- No explicit modeling of **prior probabilities of disease-causing variants genome-wide** or use of **population allele frequencies** to compute these priors addressed in the patent.
- Does not incorporate **Bayesian integration of observed variant data with potential false negatives or incomplete genomic coverage** to produce a diagnostic posterior probability or credible intervals.
- Lacks explicit modeling of **inheritance modes** (autosomal dominant/recessive/X-linked) or Hardy-Weinberg Equilibrium-based probability calculations.
- Does not produce explicit **posterior probability quantifying confidence in a complete genetic diagnosis** as distinct from pathogenicity scoring.
- The approach primarily provides a **score reflecting the functional effect of variants on cell variables** rather than a genome-wide diagnostic probability integrating multiple evidence types.
- Variant scoring is mostly computationally derived from deep models rather than Bayesian models integrating observed and unobserved variant detection probabilities.
- No description of considering **true positives (TP), false negatives (FN), true negatives (TN), false positives (FP)** in probabilistic diagnostic calculation.
  
#### Conclusion

Not blocking for Quant.

---

### Summary

Although US11887696B2 shares the domain of variant effect prediction and uses sophisticated neural networks to model the impact of genetic variants on condition-specific cellular variables, it does not embody Quant’s core innovation of integrating genome-wide prior probabilities derived from population data and inheritance modes with patient-specific variant observations (including missing/unobserved variants) in a Bayesian framework to produce posterior probabilities of disease-causing variants causing a confident genetic diagnosis. The deep learning approach to scoring deleteriousness by predicted changes in intermediate cellular phenotypes is conceptually distinct from Quant’s combined prior-posterior diagnostic certainty methodology. Therefore, this patent does not block Quant’s unique claim set or implementation of Bayesian diagnostic posteriors leveraging TP/FN distinctions.
