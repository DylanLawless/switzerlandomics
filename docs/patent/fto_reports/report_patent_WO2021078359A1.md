## Patent/Publication Analysis

### Reference #1

- **Title:** Use of inhibitors of cubilin for the treatment of chronic kidney diseases
- **Publication No.:** WO2021078359A1
- **Publication Date:** 2021-05-06
- **Link:** https://patents.google.com/patent/WO2021078359A1/en

#### Abstract (excerpt)

> "The inventors identify rare biallelic CUBN variants associated with isolated proteinuria but normal renal function, and suggest that inhibitors of cubilin would be suitable for the treatment of chronic kidney disease (CKD), particularly to prevent tubular damage due to glomerular proteinuria."

#### Relevant Overlaps

- The patent pertains to genetic variants in the CUBN gene associated with proteinuria and kidney disease.
- It involves genetic sequencing and identification of pathogenic mutations (biallelic mutations) in the cubilin gene.
- Variant annotation and filtering steps use allele frequencies (e.g. from gnomAD) and damaging effect predictions (PolyPhen-2, SIFT, MutationTaster).
- Patient-level variant data are analyzed to establish genotype-phenotype correlations.
- Addresses penetrance and phenotype implications of identified variants.

#### Key Differences

- The patent focuses on treatment of CKD via pharmacological inhibition of cubilin protein, not on genetic diagnosis or probability quantification.
- The method revolves around therapeutic administration of inhibitors (small molecules, antibodies, siRNA, CRISPR) targeting cubilin protein expression or function.
- It does not describe, claim, or disclose computational methods to quantify prior or posterior probabilities of disease-causing variants genome-wide.
- There is no Bayesian model integrating prior variant probabilities with patient-specific observed or missing variant data.
- No use of TP, FP, FN, TN matrices or explicit calculation of credible intervals for diagnostic certainty.
- The genetic analysis appears limited to variant filtering and annotation, not probabilistic diagnosis confidence.
- The scientific focus is pathophysiology and potential therapeutic targeting of a single gene/protein, not genome-wide diagnostic interpretation.

#### Conclusion

Not blocking for Quant.

*Rationale:* This patent describes biological and therapeutic approaches targeting cubilin in CKD, with supporting genetic analysis limited to variant identification and annotation. It lacks any method, system, or claim relating to the probabilistic Bayesian integration of genome-wide prior variant probabilities with observed and missing patient variant data to assess diagnosis confidence — the unique innovation of Quant. There is no focus on the use of TP, FP, TN, FN classification for clinical diagnostic probability, nor credible intervals for diagnostic certainty. The overlapping use of population frequency databases (gnomAD) and variant annotations is a common feature in genomics and does not confer blocking relevance.
