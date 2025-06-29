## Patent/Publication Analysis

### Reference #1

- **Title:** Data processing method and device  
- **Publication No.:** CN108346468A  
- **Publication Date:** 2018-10-23  
- **Link:** [https://patents.google.com/patent/CN108346468A/en](https://patents.google.com/patent/CN108346468A/en)  

#### Abstract (excerpt)

> "The invention discloses a kind of data processing method and devices ... The genotype risk probability that subject suffers from target disease is calculated according to the value of the corresponding odds ratio OR of the genotype in each site; Obtain the extraneous factor collection of subject, ... The environmental risk probability that subject suffers from target disease is calculated according to the value of each characteristics of human body; The integrated risk probability of target disease is suffered from according to genotype risk probability and environmental risk probability calculation subject."

#### Relevant Overlaps

- Uses odds ratios (OR) derived from genotype data at multiple loci to calculate genotype risk probability for a target disease.
- Incorporates external (extraneous/environmental) factors from patient characteristics (age, gender, BMI, smoking, blood pressure, etc.) into environmental risk probability.
- Calculates integrated risk probability combining genotype risk and environmental risk with weighted parameters.
- Uses Bayesian total probability formula to calculate environmental risk probability.
- Corrects OR values using population genotype frequencies, assuming independence between variant sites (similar to Hardy-Weinberg considerations).
- Provides risk probabilities of disease based on combined genetics and environment.

#### Key Differences

- Patent focuses on calculating disease risk probability at the individual level integrating genotype ORs and environmental factors, but does not model or quantify diagnostic confidence incorporating observed variant data and false negative probabilities.
- No mention or indication of computing Bayesian posterior probability for presence/absence of a disease-causing variant based on *observed variant calls* and *missing variant calls* (false negatives).
- Does not describe a framework that computes genome-wide prior probabilities of observing pathogenic variants per gene under Hardy-Weinberg equilibrium, nor aggregates variant-level priors into gene-level or patient-level posterior certainty scores.
- Uses odds ratios and environmental factors for general disease risk prediction rather than variant- and gene-level diagnostic certainty.
- No explicit treatment of mode of inheritance or explicit modeling of true positive (TP), false positive (FP), false negative (FN), true negative (TN) variant calls.
- Lacks integration of variant pathogenicity classifications or credible intervals for diagnostic certainty.
- Environmental risk factors are weighted and combined; Bayesian theory appears to be applied mostly for environmental risk, not for integrating unobserved genetic variants or diagnostic confidence estimation.
- Method is more general for disease risk prediction rather than genetic diagnosis confidence.

#### Conclusion

Not blocking for Quant.

---

### Summary

This patent describes a method for calculating disease risks based on genotype odds ratios and environmental factors, combining these into an integrated risk probability. Although it uses Bayesian formulations and adjusts for genotype frequencies, it does not encompass the core innovation of Quant — namely, the genome-wide prior probability modeling of pathogenic variants, integration of observed/missing variant data (TP/FN), and posterior probability computation of a complete genetic diagnosis with credible intervals. The patent addresses disease risk prediction rather than explicit quantification of genetic diagnosis certainty incorporating variant observation uncertainty.

Therefore, it does not appear to pose freedom-to-operate issues for Quant.
