## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for identifying an origin of a variant
- **Publication No.:** WO2025029645A1
- **Publication Date:** 2025-02-22
- **Link:** https://patents.google.com/patent/WO2025029645A1/en

#### Abstract (excerpt)

> "Abstract Provided herein are methods for differentiating tumor and non-tumor (e.g., clonal hematopoiesis of indeterminate potential (CHIP)) origin nucleic acid variants from one another in a test sample obtained from a test subject at least partially using a computer."

#### Relevant Overlaps

- Both the patent and Quant utilize genomic sequence data with epigenetic data (e.g., DNA methylation) to classify variants.
- The patent employs machine learning models trained on sequence and epigenetic features to differentiate tumor-derived vs. non-tumor-derived variants, specifically addressing clonal hematopoiesis (CHIP) interference.
- Features used include fragment length, variant allele frequency (VAF), methylation ratios, variant clonality, and population allele frequencies, which partially overlap with Quant's use of population allele frequencies and functional annotations.
- The patent explicitly models tumor and non-tumor origin of variants using supervised machine learning classifiers trained on labeled samples, integrating multi-dimensional features including epigenetic signatures and fragmentomic data.
- The patent addresses the problem of false positives arising from CHIP variants, which can confound interpretation of somatic variants in liquid biopsy cfDNA.
- Both systems process observed variant data and incorporate methylation and fragmentation information.
- The patent describes generating probabilistic outputs (though not explicitly Bayesian posterior probabilities) for tumor vs. non-tumor variant origin.

#### Key Differences

- Quant’s core innovation centers on genome-wide prior probability estimation for disease-causing variants using Hardy-Weinberg equilibrium models, integrating observed/missing variant data with explicit false negative modeling to compute Bayesian posterior probabilities of complete genetic diagnoses.
- The patent focuses on classification of **individual variants** as tumor-derived vs. CHIP-derived using machine learning classifiers trained on multi-feature epigenetic and fragmentomic data.
- The patent does not describe genome-wide prior probability modeling, explicit integration of false negative probabilities for diagnosis confidence, or calculation of credible intervals for genetic diagnosis certainty as in Quant.
- Quant’s framework outputs gene-level and patient-level probabilities assessing diagnostic confidence, not simply variant-level origin classification.
- The patent is directed to distinguishing tumor vs. clonal hematopoiesis variants in cfDNA samples (liquid biopsy for cancer), whereas Quant is oriented toward rare disease genetic diagnosis by quantifying disease-causing probabilities genome-wide.
- Although the patent includes Bayesian networks as possible classifiers, it does not specifically use Bayesian inference combining prior probabilities of pathogenic variants with observed/missing variant integration to assess full genetic diagnosis probability.
- The patent’s method is heavily reliant on machine learning feature selection and classification, without explicit derivation or use of prior probabilities from population genetics or inheritance mode models.

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
While this patent addresses variant classification between tumor and CHIP origin using multi-feature machine learning including epigenetic and fragmentation data, it does not overlap with Quant’s fundamental approach of genome-wide prior probability estimation under Hardy-Weinberg equilibrium, explicit modeling of false negatives, and Bayesian posterior computation of confidence in complete genetic diagnosis. The patent focuses on a related but distinct problem of tumor vs. non-tumor variant origin classification in liquid biopsies and does so via ML classifiers rather than Bayesian integration of prior pathogenic variant probabilities with observed/missing data. Therefore, it does not pose a Freedom-to-Operate (FTO) risk blocking Quant’s unique diagnostic probability framework.
