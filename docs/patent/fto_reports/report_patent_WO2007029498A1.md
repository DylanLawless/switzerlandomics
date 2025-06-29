## Patent/Publication Analysis

### Reference #1

- **Title:** Patient information management system and its method
- **Publication No.:** WO2007029498A1
- **Publication Date:** 2007-03-08
- **Link:** https://patents.google.com/patent/WO2007029498A1/en

#### Abstract (excerpt)

> "A patient information management system comprises judging means for calculating the disease probability of a patient by using gene information on the patient and the environment factor and a server for recording the disease probability and environment factor of the patient and the patient ID in association with each other...The terminal presents the disease probability to a doctor."

#### Relevant Overlaps

- Both Quant and the patent calculate a disease probability (morbidity probability) using genetic (gene) information and environmental factors.
- The patent discloses a system to record and manage patient genetic and environmental information and calculate disease risk probabilities.
- The patent describes delivering these probabilities to clinicians during patient care to support diagnosis or treatment.
- Both involve integrating multiple data types (genetic data, physical/environmental data) for clinical decision support.

#### Key Differences

- The patent focuses on a broader patient information management system emphasizing disease probability calculation using gene and environment data but does not describe Bayesian integration of prior genomic probabilities with patient-level observations (e.g., variant TP/FN modeling).
- It lacks the core Quant innovation of genome-wide prior probabilities under Hardy-Weinberg Equilibrium and integrating observed/missing patient variant data to produce posterior probabilities with credible intervals.
- There's no mention of explicitly modeling false negative probabilities or inheritance modes.
- The patent primarily targets general morbidity probability estimation and system workflow (data input, log access, payments), not a sophisticated Bayesian diagnostic confidence framework.
- The patent also includes features unrelated to Quant’s focus such as access permission, billing mechanisms, and recommending foods, while Quant is strictly a genome-wide variant diagnostic probability platform.

#### Conclusion

Not blocking for Quant.

---

This patent provides a system for calculating general disease probabilities from gene and environment data, but it does not specifically disclose or suggest the core technical approach of Quant, which uniquely integrates genome-wide variant prior probabilities and patient-level variant evidence including false negatives into a Bayesian framework producing posterior diagnostic probabilities with credible intervals. The patent's teachings relate to disease risk probability display and patient data management rather than the detailed probabilistic genotype-phenotype modeling central to Quant’s novelty.
