## Patent/Publication Analysis

### Reference #1

- **Title:** Computer-implemented method for identifying rare variants that cause extreme gene expression levels
- **Publication No.:** CN118922887A
- **Publication Date:** 2022-12-09
- **Link:** https://patents.google.com/patent/CN118922887A/en

#### Abstract (excerpt)

> "The technology disclosed in the present invention relates to reliably identifying variants that cause extreme gene expression levels. Extreme gene expression levels include under-expression and over-expression. These variants can then be used to train artificial intelligence-based models to complete a variety of prediction tasks."

#### Relevant Overlaps

- Uses a causal relationship model (e.g., logistic regression, ANCOVA) to associate rare variants with extreme gene expression levels while controlling for multiple confounding factors.
- Generates a causality score (e.g., p-value from Pearson correlation) to quantify the likelihood that a rare variant causes extreme gene expression.
- Controls for confounding factors including distal trans-eQTLs, local cis-eQTLs, genotype-based principal components, PEER effects, environmental effects, population structure, sex, batch effects, genotyping platform effects, etc.
- Distinguishes overexpression and underexpression effects of rare variants.
- Implements machine learning frameworks including deep learning models that process genomic sequences (chromatin models) to derive functional predictions.
- Uses deep learning models (e.g., CNNs, transformers) to predict molecular phenotypes from sequences, including variant effects.
- Applies iterative statistical modeling to improve confidence in causal links between variants and gene expression extremes.
  
#### Key Differences

- The patent focuses primarily on detecting *rare variants causing extreme gene expression phenotypes* (expression outliers) rather than estimating the *prior genome-wide probability of observing pathogenic variants* across genes as in Quant.
- The method tests causal association of identified rare variants with expression extremes and outputs a p-value-based causality score, rather than computing Bayesian posterior probabilities incorporating false negative probabilities and inheritance modes.
- Although deep learning models predict variant functional impact or chromatin states, they do not explicitly integrate population allele frequency priors or model diagnostic confidence intervals for complete genetic diagnoses.
- The approach centers on distinguishing variant-driven expression outliers in cohorts and prioritizing variants by causality scores, rather than generating genome-wide variant-disease prior and posterior probabilities under Hardy-Weinberg Equilibrium assumptions as Quant does.
- There is no discussion or claim of modeling true positives, false negatives, true negatives, and false positives in a Bayesian framework to quantify uncertainty of a *complete* genetic diagnosis.
- The technology does not address integrating observed and missing variant data to derive posterior probabilities of carrying a disease-causing variant genome-wide, which is Quant’s core novelty.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent discloses sophisticated methods combining statistical causal modeling and deep learning to identify and score rare variants associated with extreme gene expression phenotypes in individuals while controlling for confounders. However, it does not recreate the unique innovation of Quant that integrates prior genome-wide probabilities with observed/missing variant data in a Bayesian framework to quantify the certainty of a full genetic diagnosis. The focus on expression outlier detection and causality scores, absent explicit treatment of Bayesian TP/FN/FP/TN modeling and genome-wide prior/posterior variant probabilities, means it does not block Quant’s specialized method.
