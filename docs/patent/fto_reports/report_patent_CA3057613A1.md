## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of using genetic markers associated with endometriosis
- **Publication No.:** CA3057613A1
- **Publication Date:** 2020-06-03
- **Link:** https://patents.google.com/patent/CA3057613A1/en

#### Abstract (excerpt)

> "Disclosed herein are methods of using genetic markers associated with endometriosis, for example via a computer-implemented program to predict risk of developing endometriosis, and methods of preventing or treating endometriosis or a symptom thereof."

#### Relevant Overlaps

- The patent discloses detecting and analyzing genetic variants (SNPs, indels, damaging mutations, loss of function variants) associated with endometriosis risk.
- Use of computer-implemented methods and software for variant detection, genotyping, and prediction of disease risk.
- Incorporation of population allele frequencies (e.g. from gnomAD, ClinVar) and functional predictions (PolyPhen, SIFT) to classify variants regarding endometriosis risk.
- Use of panels comprising multiple genetic variants for diagnosis, prognosis, and stratification of subjects.
- Some claims describe sequencing specific genes to identify pathogenic variants linked to endometriosis.
- Methods include administering treatments (hormonal therapy, assisted reproduction, pain medications) based on detected genetic variants.
- Variants with odds ratios indicating increased or decreased disease risk are detected.
- The application emphasizes pathogenic mutation identification and clinical decision support.

#### Key Differences

- The patent focuses on detecting and using **individual or multiple genetic markers** to assess **risk or predisposition** to endometriosis and guiding treatment decisions.
- It primarily relates to **variant discovery, genotyping, and association** with disease susceptibility or symptoms.
- **Does not describe or claim integration of genome-wide prior probabilities** under Hardy-Weinberg Equilibrium.
- No explicit adoption of a **Bayesian model combining prior probabilities with observed and unobserved (false negative) variant data** to compute a **posterior probability of a complete genetic diagnosis**.
- Does not quantify false negative probabilities due to unsequenced or missing data sites.
- Diagnostic outputs do not include credible intervals reflecting diagnostic **certainty** or confidence.
- The patent’s scope is on **variant classification and disease risk prediction**, not on quantifying the confidence that a patient harbors a pathogenic variant given missing or imperfect data.
- Does not incorporate aggregation of variant-level frequencies into gene-level posterior probabilities accounting for inheritance modes (dominant/recessive/X-linked).
- Theoretical framework and downstream analyses differ significantly from Quant’s unique Bayesian probabilistic diagnosis approach.

#### Conclusion

Not blocking for Quant.

---

**Summary:** Despite the extensive use of variant data, population allele frequencies, pathogenicity predictors, and clinical correlations in this patent, it fundamentally covers methods for variant detection, association, and risk classification in endometriosis. It lacks the core innovation of Quant: **a Bayesian framework combining prior genome-wide variant probabilities with observed and unobserved variant data (including false negatives), yielding a posterior probability and credible intervals quantifying diagnostic confidence of a complete genetic diagnosis**. Therefore, this patent does not present blocking prior art against Quant’s unique technical approach.
