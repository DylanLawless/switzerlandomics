## Patent/Publication Analysis

### Reference #1

- **Title:** A method, device, computer equipment and storage medium for evidence optimization based on Bayesian model  
- **Publication No.:** CN119719955A  
- **Publication Date:** 2022-06-28  
- **Link:** https://patents.google.com/patent/CN119719955A/en  

#### Abstract (excerpt)

> "The invention discloses a Bayesian model-based evidence optimization method... calculating posterior probabilities corresponding to 17 evidence combinations given by an ACMG/AMP guide... classifying clinically unknown variation VUS into six levels... determining thresholds corresponding to different evidence intensity levels by comparing positive likelihood ratios or local positive likelihood ratios with theoretical pathogenicity probabilities..."

#### Relevant Overlaps

- Employs a Bayesian framework to calculate posterior probabilities of variant pathogenicity based on prior probabilities and evidence intensity levels.
- Utilizes statistical measures including true positives (TP), false positives (FP), true negatives (TN), false negatives (FN), positive likelihood ratios (LR+), and local LR+ to define thresholds separating evidence intensity levels.
- Converts ACMG/AMP qualitative evidence combination rules into quantitative pathogenicity probability thresholds.
- Applies bootstrapping to estimate confidence intervals of LR+ values, grounding evidence quantification in statistical rigor.
- Differentiates variant classes including pathogenic (P), likely pathogenic (LP), benign (B), likely benign (LB), and variants of uncertain significance (VUS), further sub-classifying VUS for pathogenic tendency.
- The method explicitly accounts for classification metrics such as TP, FP, TN, FN in its calculation of evidence thresholds.

#### Key Differences

- The patent focuses on optimizing and quantifying ACMG/AMP guideline evidence strengths for variant classification, aiming to refine pathogenicity categorization of individual variants.
- The approach emphasizes improving evidence intensity classification and reclassification of variants rather than integrating genome-wide prior probabilities or calculating posterior probabilities of a *complete* genetic diagnosis.
- The patent processes variant-level data and classifies variants into discrete pathogenicity levels, but does not explicitly aggregate variant information to gene-level or genome-wide disease-causing variant probability.
- Does not account for potential false negatives or missing variant observations in a patient’s genome to estimate diagnostic confidence.
- Lacks integration of inheritance modes or Hardy-Weinberg Equilibrium modeling on a genome-wide scale.
- Bayesian model here is applied primarily to optimize evidence combination for variant pathogenicity classification, not to quantify the certainty of genetic diagnoses given observed and unobserved variant data.

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
While both Quant and this patent employ Bayesian methods and use statistical measures including TP, FN, etc., this patent is directed to quantitatively optimizing variant pathogenicity evidence strength according to ACMG/AMP guidelines. It focuses on variant-level classification rather than calculating prior probabilities genome-wide or integrating observed and missing variant data to produce a posterior probability of a complete genetic diagnosis. Quant’s unique innovation—modeling diagnostic confidence at gene and genome scale accounting for false negatives and inheritance modes—is not present in this patent. Therefore, this patent does not pose a blocking risk to Quant’s core technology.
