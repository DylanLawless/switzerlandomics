## Patent/Publication Analysis

### Reference #1

- **Title:** Early Onset Systemic Lupus Erythematosus Gene Panel
- **Publication No.:** TR2021019193A2
- **Publication Date:** Not explicitly provided (application date 2021)
- **Link:** https://patents.google.com/patent/TR2021019193A2/en

#### Abstract (excerpt)

> "The invention relates to a method for the early detection, diagnosis and treatment of pathogenic variations... The invention aims to screen Early Onset Systemic Lupus Erythematosus patients and detect pathogenic variations rapidly and effectively with the next generation sequencing gene panel consisting of 31 genes... In the last step of the method, variant pathogenicity evaluation is performed. In this evaluation, the population frequency of the variant and the ClinVar, HGMD data are compared to reveal pathogenic variants."

#### Relevant Overlaps

- Use of next-generation sequencing (NGS) gene panels targeting a defined set of genes for early detection of pathogenic variants.
- Utilization of population frequency data (implicitly, e.g. from public databases) and clinical variant databases (ClinVar, HGMD) for pathogenicity evaluation.
- Application in clinical diagnosis of genetic diseases, focusing on monogenic systemic lupus erythematosus.

#### Key Differences

- The patent focuses on a targeted gene panel approach for detecting pathogenic variants primarily by sequencing and comparing variants to known pathogenicity databases.
- There is no mention or indication of integrating genome-wide prior probabilities for disease-causing variants or aggregating variant-level probabilities into gene-level or genome-wide posterior probabilities.
- No explicit use of Bayesian modeling that incorporates true positives (TP), false negatives (FN), or other diagnostic certainty metrics.
- Does not address quantification of diagnostic confidence or credible intervals regarding the completeness of a genetic diagnosis.
- The method is a molecular biology protocol and gene panel design combined with basic variant pathogenicity assessment, rather than a comprehensive probabilistic framework integrating observed and unobserved data.
- No discussion of Hardy-Weinberg equilibrium or mode of inheritance-based probabilistic modeling.
- The focus is on variant detection and classification rather than quantifying the likelihood of a complete genetic diagnosis.

#### Conclusion

Not blocking for Quant.

---

**Summary:** This patent discloses a targeted gene panel and associated sequencing method for early detection of pathogenic variants in systemic lupus erythematosus genes. While it uses population frequency and pathogenicity databases for variant assessment, it does not employ genome-wide prior probability modeling, Bayesian integration of variant data with false negative consideration, or output diagnostic confidence intervals. Therefore, it does not present substantial technical overlap with Quant’s core innovations and approach.
