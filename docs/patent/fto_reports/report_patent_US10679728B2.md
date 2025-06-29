## Patent/Publication Analysis

### Reference #1

- **Title:** Method of characterizing sequences from genetic material samples  
- **Publication No.:** US10679728B2  
- **Publication Date:** 2020-06-09  
- **Link:** https://patents.google.com/patent/US10679728B2/en  

#### Abstract (excerpt)

> "Among other aspects provided herein is a method describing the use of Single Nucleotide Polymorphism (SNP) genotyping microarrays to resolve whether genetic material (such as genomic DNA) derived from a particular individual is present in a genetic material mixture (such as a complex genomic DNA mixture). Furthermore, it is demonstrated that the identification of the presence of genetic material (such as genomic DNA) of specific individuals within a series of complex genomic mixtures is possible."

#### Relevant Overlaps

- Both this patent and Quant use SNP allele frequencies derived from genetic material to analyze mixtures.  
- It applies a Bayesian model and frequentist test statistics to estimate whether a particular individual's genetic material is present in a complex mixture.  
- Incorporates allele frequencies of a reference population and observed mixture to calculate distance statistics (bias) measuring similarity to the person of interest (POI).  
- Uses large-scale SNP microarray data (tens of thousands to hundreds of thousands of SNPs) for statistical power.  
- Employs Bayesian posterior odds ratio comparing models where the individual is or is not in the mixture, integrating raw intensity data and genotypes (including probe-level data), to estimate likelihoods of presence.  
- Accounts for contamination, degraded samples, and unsequenced or missing data via statistical modeling.  
- Does not require prior knowledge of the number of contributors to the mixture.  
- Provides a credible statistical probability (p-value or posterior probability) that the POI contributed to the complex sample.

#### Key Differences

- The patent focuses primarily on identifying the presence or absence (inclusion/exclusion) of a specific individual in a complex DNA mixture, typically in forensic contexts.  
- Quant, by comparison, uniquely quantifies genome-wide prior probabilities of disease-causing variants and integrates observed/missing variants (TPs and FNs) to compute a Bayesian posterior probability of a completed genetic diagnosis.  
- The patented method uses SNP allele frequency bias to detect individual presence in mixtures, without explicit modeling of disease causality or genetic diagnosis confidence intervals.  
- Quant’s novelty lies in using population-level genetic variation data to compute the likelihood of a variant being disease-causing per gene and inheritance mode, integrating false negatives and inheritance modeling, which is not addressed in this patent.  
- The patent centers on mixture decomposition and identification of individuals; Quant centers on variant pathogenicity prior and posterior probability computation on a genome-wide scale for clinical diagnosis.  
- The patent approaches population allele frequencies and individual SNP signals primarily for mixture deconvolution rather than variant pathogenicity assessment.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although both use Bayesian and statistical methods with population and individual genetic data and share terminology such as SNP signatures, allele frequencies, and Bayesian inference, this patent pertains to detecting whether an individual's genetic material is present in complex mixtures (forensic identification). It does not address nor overlap with Quant’s core inventive concept of generating Bayesian posterior probabilities of genetic diagnoses integrating prior disease-causing variant probabilities, observed/missing variants, and inheritance models. This is a distinct technical field and approach, with no significant or blocking overlap in the use of TP/FN or diagnostic confidence theories.

---

*End of Report*
