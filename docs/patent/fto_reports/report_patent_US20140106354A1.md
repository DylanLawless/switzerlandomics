## Patent/Publication Analysis

### Reference #1

- **Title:** Method of Diagnosing Cancer  
- **Publication No.:** US20140106354A1  
- **Publication Date:** 2014-04-17  
- **Link:** [https://patents.google.com/patent/US20140106354A1/en](https://patents.google.com/patent/US20140106354A1/en)  

#### Abstract (excerpt)

> "The present invention provides methods for diagnosing cancer (such as ovarian, breast, or colon cancer) or a predisposition thereto in a subject […] comprising detecting modified chromatin (such as DNA methylation) within a locus of the LOC134466 gene in a sample taken from the subject."

#### Relevant Overlaps

- The patent focuses on detecting epigenetic modifications (notably DNA methylation) and altered gene expression in specific loci (LOC134466 and additional genes) to diagnose or monitor cancer, including ovarian, breast, and colon cancers.
- Methods involve quantitative assessment of methylation levels and gene expression comparisons against non-cancerous samples.
- Both single-gene and multiplex gene panels (including ARMCX1, SGNE1, PEG3, PYCARD, ICAM4, etc.) are used for diagnosis.
- Diagnostic outputs involve determining presence/absence or degree of methylation and expression changes.
- Detection methods include bisulfite conversion, methylation-sensitive PCR (headloop PCR), mass spectrometry (Sequenom), and assays for gene expression (qPCR, protein detection).
- The patent includes statistical and multivariate analysis algorithms for combining multiple biomarker data into diagnostic indices.
- The biological samples include tissue biopsies, body fluids (blood, plasma), and various sample preparations.
- Describes monitoring treatment efficacy and progression by detecting changes in methylation or expression over time.
- Provides kits and computational systems for data analysis and reporting.

#### Key Differences

- The patent exclusively focuses on epigenetic markers (DNA methylation) and gene expression changes in a defined set of cancer-related genes for cancer diagnosis and prognosis.
- It does not disclose or claim integration of prior probabilities of variant pathogenicity or use of genome-wide variant frequency data.
- There is no discussion or illustration of a Bayesian framework that models true positives, false negatives, or computes posterior probabilities of a genetic diagnosis.
- The methods do not quantify the confidence or credible intervals regarding the completeness of a genetic diagnosis.
- No description of Hardy-Weinberg Equilibrium modeling or genome-wide prior probabilities for disease-causing variants.
- The patent approaches diagnosis from a biomarker methylation/expression detection perspective, rather than genetic variant probability inference.
- No mention of integrating unobserved variant data or false negative probabilities from sequencing or variant calling.
- Does not cover variant-level or gene-level probability computations or population genetic parameters.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While the patent describes methods for cancer diagnosis and monitoring based on methylation and gene expression markers — some of which overlap in disease targets (ovarian, breast, colon cancer) with Quant — it does not approach the problem using variant probability modeling, Bayesian integration of prior and observed variant data, or diagnostic confidence intervals tied to genetic variant detection as Quant does. Quant’s core innovation in genome-wide variant probability and diagnosis confidence is absent here, and the patent’s molecular biomarker-based diagnostic approach is technologically distinct and non-blocking.
