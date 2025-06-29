## Patent/Publication Analysis

### Reference #1

- **Title:** DNA methylation marker for detecting lung cancer and application thereof
- **Publication No.:** CN115505640A
- **Publication Date:** 2022-06-14
- **Link:** https://patents.google.com/patent/CN115505640A/en

#### Abstract (excerpt)

> "The invention discloses a DNA methylation marker for detecting lung cancer and application thereof, wherein the methylation marker is selected from at least 1 methylation site of any one or more target genes... and provides a lung cancer prediction model based on the methylation marker group, wherein the lung cancer prediction model can effectively identify lung adenocarcinoma and has higher sensitivity and specificity."

#### Relevant Overlaps

- Use of DNA methylation markers (specific CpG sites) in multiple genes for disease detection.
- Construction and application of prediction models to diagnose lung cancer, primarily lung adenocarcinoma.
- Use of methylation quantification methods (e.g. bisulfite sequencing).
- Application of machine learning/statistical classification algorithms such as logistic regression, support vector machines, random forests, and neural networks.
- The patent establishes diagnostic probability scores based on methylation profiles to predict disease presence.

#### Key Differences

- The technology focuses on methylation biomarker detection and statistical classification models purely based on methylation patterns from cfDNA or tissue for lung cancer detection.
- It does not describe or claim integrating prior population-level probabilities for the likelihood of pathogenic variants genome-wide.
- No mention or use of variant-level allele frequency data integration, mode of inheritance modelling, or Bayesian posterior calculation of diagnostic certainty.
- Does not model or quantify false negative probabilities for missing variant data.
- The diagnostic approach is fundamentally different: it is methylation-marker-based disease prediction rather than genome-wide variant pathogenicity and diagnosis confidence modeling.
- The model generates disease risk based on methylation status rather than integrating observed variant calls, prior probabilities, and false negative modeling.
- The method applies to a narrow disease context (lung adenocarcinoma), not genome-wide variant diagnosis across all genes.

#### Conclusion

Not blocking for Quant.

---

### Summary

This patent discloses methylation biomarker panels and machine learning classification models for early lung cancer diagnosis. While both this patent and Quant involve probabilistic modeling for disease detection, the underlying technical concepts are distinct. Quant’s innovation lies in genome-wide Bayesian integration of prior variant pathogenic probabilities with patient-specific true/false positives and negatives to derive a diagnostic certainty posterior probability. In contrast, this patent does not address genomic variant probabilities, nor does it incorporate false negative correction or inheritance mode modeling. Its models predict lung cancer presence solely from methylation patterns using standard machine learning classifiers.

Therefore, this patent does not block Quant’s core method of genome-wide variant probability-based diagnostic certainty determination.
