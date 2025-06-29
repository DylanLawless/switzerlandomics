## Patent/Publication Analysis

### Reference #1

- **Title:** Molecular diagnosis and typing of lung cancer variants
- **Publication No.:** US10196687B2
- **Publication Date:** 2019-02-12
- **Link:** https://patents.google.com/patent/US10196687B2/en

#### Abstract (excerpt)

> "Compositions and methods useful in determining the major morphological types of lung cancer are provided. The methods include detecting expression of at least one gene or biomarker in a sample at the protein or nucleic level. The expression of the gene or biomarker can be indicative of the lung tumor subtype as well as prognostic and predictive for therapeutic response."

#### Relevant Overlaps

- Uses gene expression profiling and immunohistochemistry to classify lung cancer into histological and molecular subtypes (e.g., adenocarcinoma subtypes bronchioid, squamoid, magnoid).
- Employs panels of classifier genes (e.g., ~100 genes) to distinguish lung cancer types using qRT-PCR or antibody-based detection.
- Applies hierarchical clustering and pattern recognition algorithms (e.g., nearest centroid, linear discriminant analysis).
- Uses paraffin-embedded tissue samples (FFPE) for molecular diagnosis.
- The classifier genes include those listed in the patent’s claims (e.g., CDH5, TFAP2A, TTF1, various SCC subtype genes).
- Measures expression levels normalized against housekeeping genes (e.g., CFL1, EEF1A1, RPL10).
- The use of multi-gene panels for molecular subtyping with clinical prognostic and therapeutic response value.
- Gene expression is measured quantitatively and integrated into classifiers predicting tumor subtype.

#### Key Differences

- The patent focuses on classification of lung cancer histological subtypes and molecular subtypes using gene/protein expression profiles for diagnosis and prognosis.
- The technology is based on measuring expression levels of specific gene panels and applying supervised/unsupervised statistical classifiers to categorize tumor types.
- There is no description or claim of quantifying genome-wide prior probabilities of observing pathogenic variants under Hardy-Weinberg Equilibrium or integrating observed/missing variants in patient genomes.
- The patent does not address Bayesian integration of prior disease-causing variant probabilities with observed true positive and false negative variant data.
- Does not provide uncertainty quantification (credible intervals) for diagnosis probabilities.
- Does not model or output a Bayesian posterior probability of a complete genetic diagnosis.
- The technology is focused on detecting and classifying tumor subtypes by expression profiles, not on quantifying diagnostic certainty based on genetic variant data.
- No use or mention of concepts such as TP (true positive), FN (false negative) integration in a probabilistic framework for individual diagnosis confidence.

#### Conclusion

Not blocking for Quant.

---

### Summary

The disclosed patent broadly covers molecular diagnostic methods for lung cancer subtype classification based on measuring gene or protein expression levels of selected biomarker panels using qRT-PCR and immunohistochemistry, applied to clinical samples including FFPE tissue. These methods employ supervised statistical classifiers to categorize tumor types and subtypes with prognostic implications.

Quant’s technology fundamentally differs in that it provides a genome-wide Bayesian framework to quantify prior probabilities of disease-causing variants and integrates patient-specific variant observations (including false negatives) to compute a posterior probability and credible intervals for genetic diagnosis certainty. The patent does not disclose or claim such Bayesian modeling of variant detection likelihoods, nor does it incorporate modeling of inheritance modes, Hardy-Weinberg Equilibrium based prior gene-level probabilities, or explicit false negative probability integration.

Therefore, while there are superficial thematic overlaps in the domain of genetic/genomic analysis and variant classification, the claimed and disclosed methods in this patent do not conflict with Quant’s core innovation of posterior probability calculation integrating prior variant probabilities with individual observed/missing variant data to quantify diagnostic confidence.
