## Patent/Publication Analysis

### Reference #1

- **Title:** AI-based detection of genetic conservation and expression conservation at base resolution
- **Publication No.:** KR20250048658A
- **Publication Date:** 2025-02-05
- **Link:** https://patents.google.com/patent/KR20250048658A/en

#### Abstract (excerpt)

> "The disclosed technology relates to detecting genetic conservation and epigenetic signals for a reference genetic sequence at base resolution by generating multiple alternative chromatin sequence representations that capture evolutionary conservation, transcription initiation, or epigenetic signals, feeding these into classifiers and pathogenicity predictors to determine variant pathogenicity."

#### Relevant Overlaps

- Both Quant and this patent use genomic sequence data to compute per-base biological and functional measures (e.g. evolutionary conservation, transcription initiation, epigenetic signals).
- Use of deep learning models (e.g., convolutional neural networks, transformers) to predict molecular phenotypes from sequence data.
- Classification of variants based on comparison between a reference sequence and alternative sequences at base-level resolution.
- The patent describes generating multiple biological quantity output sequences (e.g. conservation scores, gene expression predictions, epigenetic marks) and comparing reference with variant sequences to infer pathogenicity scores.
- The concept of computing base-wise signals and using machine learning for variant effect prediction overlaps with Quant’s use of biological quantity models generating per-base outputs.

#### Key Differences

- The patent’s focus is on predicting pathogenicity and molecular phenotypes directly from sequence and chromatin features using deep learning classifiers, concentrating on annotating variants with pathogenicity or functional impact scores.
- Quant’s core innovation is modeling genome-wide prior probabilities of pathogenic variants incorporating Hardy-Weinberg equilibrium, integrating observed patient variants and explicitly modeling false negatives to compute posterior probabilities of complete genetic diagnosis, with credible intervals quantifying diagnostic certainty.
- Quant’s Bayesian integration of prior probabilities with patient data to derive posterior diagnostic probabilities is not disclosed or suggested in the patent.
- The patent primarily addresses variant pathogenicity classification based on sequence and epigenetic features; it does not detail methods calculating prior gene-level probabilities under inheritance modes or integrate TP/FN rates to estimate diagnostic confidence.
- The use of TP, FP, TN, FN or detailed modeling of false negatives at the patient data integration level to quantify certainty of genetic diagnoses, which is fundamental to Quant, appears absent.
- Quant’s genome-wide probabilistic framework and credible interval outputs for diagnosis are novel compared to the deep learning variant effect classifiers shown.

#### Conclusion

Not blocking for Quant.

---

This patent primarily concerns deep learning-based variant pathogenicity prediction from sequence and epigenetic data and molecular phenotype prediction. Although superficially related in applying AI to genomic variant interpretation and epigenetic signals, it does not disclose or suggest Quant’s unique Bayesian integration of prior probabilities with patient-specific variant observations, modeling false negatives, and producing posterior diagnostic probabilities with credible intervals. Therefore, it does not block Quant’s core methodological innovations.
