## Patent/Publication Analysis

### Reference #1

- **Title:** A method for determining whether a subject is at risk to develop cancer and tools related thereto  
- **Publication No.:** WO2018224731A1  
- **Publication Date:** 2018-12-06  
- **Link:** [https://patents.google.com/patent/WO2018224731A1/en](https://patents.google.com/patent/WO2018224731A1/en)  

#### Abstract (excerpt)

> "The present invention relates to the fields of diagnostics and more specifically predicting or estimating occurrence of diseases such as cancer... the present invention relates to a method for determining whether a subject is at risk to develop cancer... utilizing a specific combination of genes associated with chromosomal segregation... determining expression levels of at least three genes associated with chromosomal segregation from a colon mucosa sample to evaluate cancer risk."  

#### Relevant Overlaps

- Both Quant and this patent relate broadly to clinical genetic diagnostics aiming to estimate disease risk.  
- The patent uses gene expression data of multiple chromosomal segregation-related genes as biomarkers to assess cancer risk.  
- Statistical methods, including t-tests and gene expression normalization, are used to detect significant decreases in gene expression levels indicating disease risk.

#### Key Differences

- The patent focuses specifically on measuring **gene expression levels** (RNA) from histologically normal colon mucosa tissue to predict cancer risk, particularly colorectal cancer.  
- It does **not** involve analysis of genetic variants, allele frequencies, or integration of observed and unobserved variant data.  
- There is no mention or use of probabilistic modeling of variant observation, Hardy-Weinberg Equilibrium, or calculating Bayesian posterior probabilities of genetic diagnoses.  
- The method does not quantify true positives, false negatives, or provide credible intervals for genetic diagnoses. Instead, it detects **downregulation of gene expression** as a biomarker of "cancer risk."  
- Quant’s core innovation is genome-wide variant probability integration to assess diagnostic certainty at the variant/gene level, unlike this patent's gene-expression-based cancer risk test.  
- The biological target differs: Quant focuses on variant pathogenicity and diagnosis certainty; the patent targets gene expression changes preceding cancer development.

#### Conclusion

**Not blocking for Quant.**

This patent’s technology is fundamentally different from Quant’s. It does not address or overlap with the core Bayesian modeling of variant observation probabilities, integration of prior probabilities with patient variant data, or quantification of TP, FN rates underlying a posterior probability of genetic diagnosis. It uses gene expression biomarkers for cancer risk prediction rather than genetic variant probabilities or diagnosis confidence modeling.
