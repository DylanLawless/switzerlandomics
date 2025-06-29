## Patent/Publication Analysis

### Reference #1

- **Title:** Polygenic risk score for in vitro fertilization  
- **Publication No.:** CN114728069B  
- **Publication Date:** 2022-11-25 (priority filings 2020)  
- **Link:** https://patents.google.com/patent/CN114728069B/en

#### Abstract (excerpt)

> "Provided are methods for determining disease risk associated with an embryo, comprising constructing a genome of an embryo based on (i) one or more genetic variants in the embryo, (ii) a paternal haplotype, (iii) a maternal haplotype, (iv) a transmission probability of the paternal haplotype, and (v) a transmission probability of the maternal haplotype; assigning a polygenic risk score to the embryo based on the constructed genome of the embryo; determining disease risk associated with the embryo based on the polygenic risk score; and determining the transmission of disease-causing genetic variants and/or haplotypes from the paternal genome and/or maternal genome to the embryo…"

#### Relevant Overlaps

- Construction of the embryo genome from parental haplotypes and rare genotyping data of embryo.
- Use of probabilities of transmission of parental haplotypes to embryos.
- Calculation of polygenic risk scores (PRS) based on weighted sums of variant effects across multiple sites.
- Determination of combined risk from polygenic scores and monogenic variant transmission.
- Consideration of population allele frequencies, family history, and phenotypic data in risk estimation.
- Use of phased haplotypes and integration of sequencing technologies (e.g., long reads, microarrays).
- Application of models for IVF embryo and sperm donor selection based on estimated disease risk.
- Incorporation of HLA typing and haplotype-resolved genomics for risk prediction.
- Statistical modeling using liability threshold and Bayesian approaches for disease risk.
- Reporting of uncertainty and credible intervals (implied by detailed statistical modeling and simulations).
- Use of grandparental data and extended family history to improve phasing and risk predictions.

#### Key Differences

- The patent focuses primarily on embryo genome construction, polygenic risk scoring, and use in IVF donor/embryo selection.
- Emphasizes predicting and ranking risk based on scores and haplotype transmissions rather than explicitly quantifying diagnostic confidence integrating true positive/false negative variant detection outcomes in patients.
- Does not explicitly mention integrating observed variant data with false negative probabilities or calculating Bayesian posterior probabilities of a *complete genetic diagnosis*, i.e., confidence that no pathogenic variant is missed.
- While it models transmission probabilities and does Bayesian-like statistical simulation of genotype inheritance, it does not explicitly provide a genome-wide prior probability of carrying disease-causing variants under Hardy-Weinberg equilibrium nor explicitly account for false negatives as part of diagnostic certainty.
- The context is largely in preimplantation genetic testing and embryo/sperm donor selection rather than clinical diagnostic certainty per patient genome.
- Does not appear to produce credible intervals quantifying uncertainty in diagnosis derived from combined prior and observed/missing variant data.

#### Conclusion

Potential overlap — recommend legal review.

---

**Rationale:**  
This patent shares significant technical concepts of constructing embryo genomes from parental haplotypes combined with rare genotyping data, using polygenic risk scores across multiple loci, and integrating monogenic risk by assessing transmission of haplotypes and variants. The probabilistic modeling of transmission and haplotype structure aligns strongly with Quant’s technical methods in terms of variant-level probabilities and combining evidence from inherited haplotypes.

However, Quant’s unique and core novelty lies in integrating genome-wide prior probabilities of pathogenic variant carriage under population genetics models together with observed variant calls including false negatives to generate a Bayesian posterior probability representing the **confidence of a complete genetic diagnosis**. This patent centers on risk scoring in an IVF context, and polygenic risk modeling, not on quantifying diagnostic certainty by incorporating false negative probabilities or explicitly modeling all TP, FP, TN, FN outcomes in clinical diagnostic settings.

Despite these key differences, the overlap in haplotype-based genome reconstruction, use of transmission probabilities, and risk scoring means this patent’s claims may partially cover related methods in embryo genetics and risk prediction, especially regarding polygenic and monogenic risk combination. Therefore, the Quant team should consider focused legal review on claims related to probabilistic haplotype transmission and polygenic risk scoring in embryo genome construction contexts. Quant’s specific approach to incorporating variant-level diagnostic certainty from TP/FN modeling is a distinguishing innovation not clearly anticipated or taught here.
