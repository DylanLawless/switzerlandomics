## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for decomposition and quantification of dna mixtures from multiple contributors of known or unknown genotypes
- **Publication No.:** EP4517760A2
- **Publication Date:** 2022-01-05
- **Link:** https://patents.google.com/patent/EP4517760A2/en

#### Abstract (excerpt)

> "Methods and systems are provided for quantifying and deconvolving nucleic acid mixture samples including nucleic acid of one or more contributors having known or unknown genomes. The methods and systems provided herein implement processes that use Bayesian probabilistic modeling techniques to determine the abundances and confidence intervals of genetically distinct contributors in a chimerism sample, thereby improving specificity, accuracy and sensitivity..."

#### Relevant Overlaps

- Both the patent and Quant use Bayesian probabilistic mixture models to quantify fractions of nucleic acid from multiple contributors in a mixture.
- Both account for contributors of unknown genotype via marginalization over genotype combinations weighted by population allele frequencies.
- Both consider errors in sequencing and sampling (e.g., sequencing error modeled via parameters like λ).
- Both utilize binomial and beta-binomial distributions to model allele read counts and PCR amplification noise.
- Both use prior genotype probability distributions consistent with Hardy-Weinberg equilibrium and model genetic relationships between contributors (e.g., parent-child, siblings).
- Both implement numerical optimization (including grid search and quasi-Newton methods) to estimate mixture fractions and their confidence intervals based on sequencing data.
- Both patents and Quant address sequencing reads mapping with unbiased techniques that consider allelic variants to reduce mapping bias.
- Both analyze biallelic polymorphic loci, commonly SNPs, for allele counting and contributor fraction estimation.
- The disclosed system also integrates DNA extraction, amplification, and sequencing steps into the probabilistic models to robustly model variability.
- Both produce credible intervals (confidence intervals) on contributor fraction estimates using Hessian matrix or Fisher information.

#### Key Differences

- The patent focuses on deconvolving mixtures of DNA from multiple genetic contributors, e.g., in transplantation chimerism, forensic samples, cell cultures — broadly aiming to quantify proportions of different genomes in mixed samples.
- Quant’s key novelty is generating genome-wide prior probabilities of disease-causing variants and integrating observed and unobserved variants (false negatives) to quantify posterior probabilities of carrying a pathogenic variant, providing diagnostic confidence with credible intervals.
- The patent does not address calculating prior probabilities of pathogenic variant occurrence across genes or inheritance modes, nor explicitly model the probability of a complete genetic diagnosis.
- The patent’s modeling is centered on quantifying contributor fractions in DNA mixtures, not on clinical variant pathogenicity interpretation or diagnostic certainty estimations.
- Quant explicitly integrates population genetics priors with patient variant observations, including missing data, enabling posterior diagnosis probability; the patent focuses on nuclear mixture fraction quantification without this clinical diagnostic angle.
- The patent is tailored to DNA mixtures and contributor fraction estimation rather than genome-wide variant pathogenicity assessment.
- Quant produces gene-level probabilities and diagnostic risk assessments, which are not addressed by the patent.
- The patent’s technical implementations are tailored to mixtures of known or unknown contributors and quantification challenges therein, including stochastic modeling of PCR amplification and sequencing noise.
- Although both use Bayesian approaches and probabilistic models, the patent’s application domain is different from Quant’s clinical genetic diagnosis probability quantification.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
While the patent and Quant share high-level Bayesian probabilistic modeling and some statistical tools (binomial, beta-binomial distributions, genotype marginalization, modeling sequencing errors), the patent is focused on deconvolution and quantification of mixed DNA contributor fractions in samples such as transplantation chimerism or forensic mixtures. Quant’s core innovation—calculating prior probabilities of pathogenic variants genome-wide, integrating observed and missing variant data to compute the Bayesian posterior probability of a genetic diagnosis with credible intervals—is a distinct theoretical approach addressing clinical interpretation beyond mere mixture deconvolution. The patent does not disclose or suggest such diagnostic probability modeling using genetic disease variant priors with assessment of diagnostic confidence intervals. Therefore, the patent does not block Quant’s novel method or applications.
