## Patent/Publication Analysis

### Reference #1

- **Title:** High throughput prime editing screens identify functional dna variants in the human genome
- **Publication No.:** WO2024187173A1
- **Publication Date:** 2024-05-16 (publication date per Google Patents; actual filing dates range earlier)
- **Link:** https://patents.google.com/patent/WO2024187173A1/en

#### Abstract (excerpt)

> "A genetic prime editing screening platform to identify functional variants related to human health and disease, is configured substantially to annotate genome with nucleotide resolution with actionable disease prediction and treatment for personalized medicine."

#### Relevant Overlaps

- Both Quant and this invention involve genome-wide analysis of genetic variants.
- The patent describes characterizing the functional impact of DNA variants, including potentially disease-associated variants, at base-pair resolution using a pooled prime editing screening platform.
- Use of clinically relevant variant sets (e.g., ClinVar variants) and disease-associated SNPs is common to both.
- Both employ quantitative measurements of the functional consequence of genetic variants to inform disease relevance.
- Aim to provide actionable insights for disease prediction and diagnosis.
- The invention uses high-throughput data and statistical testing (e.g., fold changes, significance thresholds) to identify functional variants, implying some probabilistic quantification of variant effect.

#### Key Differences

- This invention focuses exclusively on a molecular genome editing platform (prime editing screens) that experimentally creates variants in living cells and measures their functional impact (e.g., on cell growth), i.e., an experimental functional assay platform.
- Quant is a computational Bayesian framework for quantifying prior and posterior probabilities of disease-causing variants by integrating population allele frequencies, variant annotations, and patient-specific variant calls, explicitly modeling true/false positive and negative probabilities and diagnostic confidence.
- The invention does not describe or claim integration of prior probabilities with observed or missing variant data to compute a Bayesian posterior of a genetic diagnosis.
- There is no mention or claim involving modeling false negatives or unobserved variants or computing diagnostic credible intervals.
- The patent’s approach centers on generating experimental functional data via prime editing screens rather than computational probabilistic inference for diagnosis certainty.
- Terms like true positive, false negative, or Bayesian diagnostic posteriors, which define Quant’s unique innovation, are absent.
- The invention’s core novelty is a scalable prime editing experimental platform, not a probabilistic diagnosis quantification method.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** Although both relate broadly to disease-associated variant interpretation, this patent covers an experimental high-throughput prime editing functional platform to characterize variant effects at nucleotide resolution. Quant’s distinctive innovation lies in computational Bayesian modeling integrating prior probabilities, observed/missing variants, and their uncertainty (TP, FN) to compute genetic diagnosis likelihood—concepts absent from this patent. Hence, there is no substantive overlap with Quant’s method of variant probability quantification and diagnostic certainty modeling.
