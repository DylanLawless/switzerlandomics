## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and Systems for Accurate Computational Decomposition of DNA Mixtures from Contributors of Unknown Genotypes
- **Publication No.:** NZ759848B2
- **Publication Date:** Not explicitly provided (filed June 20, 2017 provisional priority)
- **Link:** https://patents.google.com/patent/NZ759848B2/en

#### Abstract (excerpt)

> "Some implementations provide computer-implemented methods and systems for quantification and deconvolution of nucleic acid mixture samples including nucleic acid (e.g., DNA or RNA) of two or more contributors having unknown genotypes...Because various methods and systems provided herein implement strategies and processes that use probabilistic mixture models and Bayesian inference techniques, the embodiments provide technological improvements over conventional methods in quantification and deconvolution of nucleic acid (e.g., DNA or RNA) mixture samples."

#### Relevant Overlaps

- Both Quant and this patent address quantification of DNA mixtures from multiple contributors using probabilistic models.
- Use of Bayesian inference techniques to estimate contributor fractions in a nucleic acid mixture.
- Account for errors in sequencing reads and sample preparation (extraction, PCR amplification), employing beta-binomial models to capture variability beyond simple binomial sampling.
- Modeling genotypes as unknown or partially known, marginalizing over possible genotype combinations, with priors based on population allele frequencies, including Hardy-Weinberg equilibrium.
- Incorporation of sequencing error rates (λ) into expected allele frequency calculations.
- Use of multi-locus likelihood functions combining single-locus likelihoods.
- Use of numerical optimization methods combining grid search and quasi-Newton methods (BFGS) for maximum likelihood estimation of mixture fractions.
- Capability to provide confidence intervals for estimated fractions via Hessian matrix of log-likelihood.
- Handling mixtures of up to multiple contributors (including >2), with unknown genotypes.
- Specific methods for unbiased mapping of reads to reference genome via hashing and generation of unbiased target sequences to mitigate mapping bias at polymorphic sites.
- Modeling multiple experimental steps probabilistically: DNA extraction, amplification, and sequencing.
- Application to clinical use cases including transplants (donor and donee mixture).
- Providing quantitative measures of fractional DNA contribution, not just classification.
  
#### Key Differences

- The patent focuses on quantifying relative DNA fractions of contributors in a nucleic acid mixture and deconvolution of mixture samples, whereas Quant focuses on genome-wide **prior** and **posterior** probabilities related to **disease-causing variants** and diagnostic confidence.
- Quant’s key novelty is integrating prior probabilities of pathogenic variant observation with true positives and false negatives to derive Bayesian diagnostic posterior probabilities with credible intervals related to genetic diagnosis certainty.
- The patent does not discuss genomic disease diagnosis or variant pathogenicity prior probabilities, modes of inheritance, or credible intervals for a **genetic diagnosis**; rather, it focuses on estimating contributor fractions (e.g., donor versus recipient DNA) in mixtures such as chimerism testing.
- The patent models allele frequencies and sequencing errors to estimate fractional contributions of contributors, not probabilistic diagnosis of disease variants.
- Quant’s integration of variant-level prior pathogenicity probabilities with observed/missing variant data across the whole genome is conceptually distinct from estimating donor fractions in mixture samples.
- Quant explicitly incorporates gene and disease panel data (PanelApp), inheritance modes, and public pathogenicity databases (ClinVar, AlphaMissense) for variant diagnosis probability estimation.
- The patent’s examples and claims focus on polymorphism loci allele counts for **mixing fraction estimation**; Quant focuses on prior and posterior probabilities for presence/absence of **pathogenic genotypes**.
- Quant provides **genome-wide** integration with credible intervals specifically for genetic diagnosis confidence, whereas this patent is tailored for mixture decomposition (e.g., chimerism) with no claim to diagnosis confidence or variant pathogenicity.
- The patent refers extensively to chimerism, transplantation monitoring, and biological sample mixture quantification; Quant is designed for rare disease and variant pathogenicity diagnostic certainty determination.
- Quant’s method explicitly models false negative probabilities of missing variants (e.g., due to sequencing coverage gaps), not addressed in this patent.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:**  
This patent shares significant technical overlap with Quant in that both use probabilistic Bayesian models, explicit modeling of allele counts at polymorphic loci, genetic priors based on Hardy-Weinberg equilibrium, sequencing error modeling, and numerical optimization techniques to estimate fractions or probabilities related to nucleic acid mixtures. Both employ complex likelihood functions over genotypes and Bayesian marginalization.

However, the patent is fundamentally directed to computational **deconvolution and quantification of contributor fractions** in mixed DNA samples from unknown genotypes (e.g., for chimerism testing) and does not claim or describe the integration of **prior probabilities of pathogenic variant observations combined with true/false positive/negative variant information to estimate genetic diagnosis posterior probabilities**, which is Quant’s core novelty.

The strong conceptual resemblance on Bayesian modeling of allele counts and error distributions, together with multi-locus likelihood frameworks and numerical optimization for fraction estimation, means the patent could potentially block some aspects if Quant’s claims or implementations intersect with mixture quantification or chimerism analysis domains. Given the sophistication and overlap of key computational methods, a detailed legal review is recommended to assess freedom to operate relative to Quant’s specific novelty and claims.
