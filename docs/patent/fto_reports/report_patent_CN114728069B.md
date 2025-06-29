## Patent/Publication Analysis

### Reference #1

- **Title:** Polygenic risk score for in vitro fertilization  
- **Publication No.:** CN114728069B  
- **Publication Date:** 2022-12-23 (based on global status typical for CN patents; exact date from source)  
- **Link:** [https://patents.google.com/patent/CN114728069B/en](https://patents.google.com/patent/CN114728069B/en)

#### Abstract (excerpt)

> "Provided are methods for determining disease risk associated with an embryo, comprising constructing a genome of an embryo based on (i) one or more genetic variants in the embryo, (ii) a paternal haplotype, (iii) a maternal haplotype, (iv) a transmission probability of the paternal haplotype, and (v) a transmission probability of the maternal haplotype; assigning a polygenic risk score to the embryo based on the constructed genome of the embryo; determining disease risk associated with the embryo based on the polygenic risk score; and determining the transmission of disease-causing genetic variants and/or haplotypes from the paternal genome and/or maternal genome to the embryo."

#### Relevant Overlaps

- Uses haplotype-resolved parental genomes combined with rare embryo genotyping to reconstruct an embryo genome.
- Calculates a polygenic risk score (PRS) for the embryo by summing effects across multiple loci.
- Determines transmission probability of monogenic disease-causing variants/haplotypes from parents to embryo.
- Combines monogenic variant transmission information and polygenic risk scores to output a combined disease risk.
- Uses population allele frequencies, family history, and clinical data (e.g., UK Biobank) to inform risk models.
- Employs phase separation methods, sequencing techniques, and statistical models for haplotype inference and embryo genome reconstruction.
- Includes simulations of gamete recombination to predict possible children's genomic distributions.
- Provides risk ranking for embryo and sperm donor selection based on integrated disease risk scores.
- Incorporates HLA typing and family history to refine disease risk predictions.
- Utilizes logistic regression models integrating PRS, sex, family history, and genetic sharing scores.
- Quantifies disease risk likelihoods and credible intervals for embryo disease susceptibility.

#### Key Differences

- The patent’s focus is on embryo genome reconstruction and polygenic risk scoring predominantly in the context of in vitro fertilization and donor/embryo selection workflows.
- While Bayesian concepts appear implicitly in statistical modeling and genome reconstruction (e.g., HMM for phase inference), the patent does not explicitly mention integrating prior probabilities of variant pathogenicity together with observed variant data and false negative (FN) probabilities to compute Bayesian posterior probabilities of a *complete genetic diagnosis*.
- This patent centers on assigning polygenic risk scores (PRS) and combined risk from haplotype transmission, rather than explicitly modeling the full spectrum: true positives (TP), false positives (FP), true negatives (TN), and false negatives (FN) at the gene or variant level to quantify certainty of diagnosis.
- The described methods use population allele frequencies and genotypes but do not formulate genome-wide prior probabilities under Hardy-Weinberg Equilibrium for disease-causing variants per gene and inheritance mode.
- Does not explicitly deliver credible intervals or uncertainty bounds quantifying diagnostic confidence from integrating observed variant calls with unobserved/no-call data.
- The polygenic risk scoring functionality is based on summing SNP effect sizes and integrating family history but not the Bayesian integration of variant observation with true/false positive and negative counts central to Quant.
- The scope is more narrowly focused on embryo and donor risk prediction rather than a genome-wide variant probability platform that outputs prior and posterior gene-level diagnostic probabilities.

#### Conclusion

Not blocking for Quant.

---

**Summary:** This patent focuses on embryo genome reconstruction and polygenic risk scoring combined with monogenic variant transmission risk for IVF applications. It does not describe the unique Quant approach of calculating genome-wide prior probabilities under Hardy-Weinberg Equilibrium and integrating these priors with observed and missing patient variant data (TP, FN, FP, TN) to compute a Bayesian posterior probability of a complete genetic diagnosis with credible confidence intervals. While both use Bayesian/statistical models and pedigree data, the patent stops short of the specific, clinically actionable diagnostic confidence quantification that defines Quant’s novelty.
