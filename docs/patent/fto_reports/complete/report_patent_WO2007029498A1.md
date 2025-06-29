## Patent/Publication Analysis

### Reference #1

- **Title:** Patient information management system and its method  
- **Publication No.:** WO2007029498A1  
- **Publication Date:** 2007-03-15  
- **Link:** https://patents.google.com/patent/WO2007029498A1/en

#### Abstract (excerpt)

> "A patient information management system comprises judging means (12) for calculating the disease probability of a patient (P) by using gene information on the patient and the environment factor and a server (11) for recording the disease probability and environment factor of the patient (P) and the patient ID in association with each other... The terminal (21) presents the disease probability to a doctor."

#### Relevant Overlaps

- Uses gene information and environmental factors to calculate a probability that a patient suffers from a particular disease (disease probability).
- The system records these morbidity/disease probability values in association with patient ID and environment factors on a server.
- Allows clinicians to access patient-specific disease probabilities at the point of care.
- Uses environmental and genetic data integration, and transmits disease probability values to clinicians' terminals.
- Tracks usage/access logs and handles remuneration to medical institutions or doctors based on access or services.
- The methods include integration of environmental and genetic factors for likelihood estimation of diseases.
- The system explicitly provides disease probability outputs to physicians, potentially supporting clinical decision or treatment.

#### Key Differences

- The system provides a general "disease probability" calculated from genetic and environmental factors, based on pre-defined formulas or correlations (e.g., Patent documents WO2003/087360 and WO2005/036443 methods).
- Lack of technical teaching regarding:  
  - Genome-wide **prior probabilities** of disease-causing variants per gene or inheritance mode.  
  - Integration of prior population-based variant occurrence (e.g., Hardy-Weinberg Equilibrium calculations).  
  - Bayesian posterior probability models integrating observed patient variant data with false negative/missing variant data to quantify **diagnostic confidence** or a credible interval of a genetic diagnosis.  
  - Quantifying false negatives at gene level or genome-wide scale as part of diagnosis probability.  
  - Explicit support for modes of inheritance modeling or genome-wide variant aggregation.  
- The patent emphasizes centralized management of disease probabilities linked to a patient and environmental factors, but does not detail variant-level Bayesian inference or genome-wide variant probability modeling as in Quant.
- Focus is on infrastructure for information management, data access, billing, and recommending therapeutic products; not on computational genome-wide variant probability estimation.
- The core innovation of Quant is quantifying the Bayesian posterior of carrying a disease-causing variant considering missing data, which is not described or suggested here.
- Use of "disease probability" here follows conventional genetic risk scoring from patient gene/environmental factors, not a variant-level prior/posterior probability integration framework accounting for TPs, FNs, FPs, TNs.
- No mention or teaching of Hardy-Weinberg based allele frequency modeling or integration with gene-panel inheritance modes.
- The workflows focus on patient data management, billing, and providing genetic analysis results to clinicians, not on computational genomic diagnosis certainty modeling.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
WO2007029498A1 discloses a patient information management system that calculates a disease probability based on a patient’s genetic and environmental data and records this for clinician access and service billing. While overlapping in dealing with genetic data and probabilistic disease risk outputs, it lacks the core technical innovation of Quant, which focuses on genome-wide prior variant probabilities, Bayesian posterior probability of genetic diagnosis accounting for missing variant data, and credible intervals of certainty. The patent primarily covers data storage, access control, billing, and clinical reporting infrastructure, not variant-level Bayesian diagnostic certainty modeling. Therefore, it does not block Quant’s unique advances.
