## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for accurate computational decomposition of DNA mixtures from contributors of unknown genotypes  
- **Publication No.:** EP3642744B1  
- **Publication Date:** 2021-11-17  
- **Link:** [https://patents.google.com/patent/EP3642744B1/en](https://patents.google.com/patent/EP3642744B1/en)

#### Abstract (excerpt)

> (No explicit abstract was provided; analysis based on detailed description)

#### Relevant Overlaps

- Both the patent and Quant use **Bayesian probabilistic mixture models** to analyze nucleic acid sequence data comprising alleles at polymorphic loci.
- The patent quantifies **contributor fractions (β)** in a nucleic acid mixture accounting for **true positives (TP)** (allele counts) and sequence errors.
- Use of **prior genotype probabilities** based on Hardy-Weinberg equilibrium and accounting for unknown contributor genotypes parallels Quant’s modeling of priors over variant occurrence and genotypes.
- Incorporation of **beta-binomial distributions** combining binomial sampling noise (sequencing) with beta distributions modeling allele fraction uncertainty (extraction, PCR amplification), similar to Quant’s probabilistic modeling of sampling, amplification, and sequencing noise.
- Calculation of **posterior probabilities of contributor genotypes** and derivation of credible intervals/confidence from Fisher information, linked to Quant’s credible intervals of genetic diagnosis certainty.
- The patent explicitly addresses **explicit modeling of false negatives (natural and mechanistic dropout)** and false positives (stutter errors), analogous to Quant’s explicit modeling of potential false negatives and sequencing errors.
- **Summation/marginalization over genotype configurations and use of likelihood maximization** to infer contributor fractions (β), reflecting the integrated Bayesian likelihood framework in Quant.
- The patent includes **pruning of genotype configurations using criteria based on allele counts and RMSE** to maintain computational feasibility, showing a thorough implementation of Bayesian genotype deconvolution akin to Quant’s genotype-marginalized calculation for diagnosis confidence.
- Both methods use extensive **public databases for prior genotype probabilities** but the patent also models genetic relationships between contributors as priors, similar to Quant’s incorporation of gene-disease panels and population frequencies.
- The patent’s **use in clinical applications such as transplant donor DNA quantification and forensic DNA mixture deconvolution** overlaps with Quant’s intended clinical genetics diagnostic applications.
- The patent describes **a computational system and software product** for implementing these Bayesian mixture models, paralleling Quant’s software framework.

#### Key Differences

- The patent’s core focus is on **deconvolution of DNA mixtures from multiple contributors of unknown genotypes** in a sample, estimating fractions of each contributor’s DNA in the presence of noise (e.g., transplantation donor/recipient DNA, forensic samples).
- Quant focuses on **genome-wide calculation of prior probabilities of pathogenic variants under Hardy-Weinberg equilibrium and inheritance mode, integrating observed/missing variant data to compute a Bayesian posterior probability of a complete genetic diagnosis for an individual patient**.
- The patent does **not address genome-wide prior probability calculation of disease-causing variants across genes** nor does it **focus on modes of inheritance and disease gene panels integration** as Quant does.
- The patent centers on **mixture deconvolution (i.e., quantifying fractions of contributors’ DNA in a mixture), and genotype inference from mixture samples**, rather than the **probability/confidence of comprehensive pathogenic variant observation in a single genome for a clinical diagnosis**.
- Quant’s unique innovation is integrating **prior probabilities with observed (and possible unobserved) variant data per gene to estimate the confidence of a complete genetic diagnosis**, which is not described in the patent.
- Although both use Bayesian models and TP/FN concepts, the patent lacks explicit modeling or emphasis on **false negatives or missingness at the genome-wide variant level to quantify diagnostic confidence**.
- The patent is tailored for **mixtures of two or more genomes in a single sample**, whereas Quant analyzes **variant probabilities in an individual’s genome under different inheritance models**.
- The patent focuses heavily on **sequencing error models, stutter modeling for STR alleles**, and forensic mixture deconvolution, which are not core to Quant’s method.
- Quant additionally provides **credible intervals for diagnostic certainty at the variant and gene level**, while the patent emphasizes confidence intervals for contributor fraction estimates.
- Quant explicitly **integrates variant-level annotation databases (ClinVar, gnomAD, functional predictors) and inheritance modes**, which the patent does not describe.

#### Conclusion

**Not blocking for Quant.**

---

**Summary:** Although EP3642744B1 discloses advanced Bayesian models integrating true/false allele counts to quantify DNA contributor fractions in mixtures and infer genotypes with posterior probabilities and confidence intervals, the focus is fundamentally different from Quant’s genome-wide variant prior probability integration and posterior probability of a complete genetic diagnosis. The patent addresses mixture deconvolution, not variant pathogenicity or diagnosis confidence. Use of Bayesian inference and modeling of TP/FN is present but at the contributor DNA fraction and genotype level in mixtures, not at Quant’s gene-level diagnostic certainty integrating prior probabilities and observed/missing variant data in an individual genome. Therefore, the patent is not blocking to Quant’s novel methodological innovation or intended use cases.
