## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for decomposition and quantification of dna mixtures from multiple contributors of known or unknown genotypes
- **Publication No.:** NZ759784B2
- **Publication Date:** 2022-04-27
- **Link:** https://patents.google.com/patent/NZ759784B2/en

#### Abstract (excerpt)

> "Some implementations presented herein provide computer-implemented methods and systems for deconvolution of nucleic acid mixture samples including nucleic acid (e.g., DNA or RNA) of two or more contributors of unknown genotypes... Because various methods and systems provided herein implement algorithms and processes that use probabilistic mixture models and Bayesian inference techniques, the embodiments provide technological improvements over conventional methods in deconvolution of nucleic acid (e.g., DNA or RNA) mixture samples."

#### Relevant Overlaps

- Uses *probabilistic mixture models* and *Bayesian inference* to quantify the fractions of nucleic acid contributors in a mixture.
- Receives allele counts from sequence reads at polymorphic loci and models allele counts probabilistically.
- Explicit modeling of errors including sequencing errors, amplification (PCR) errors, and DNA extraction variability.
- Uses *binomial*, *beta*, *beta-binomial* distributions to capture variability and error sources.
- Includes posterior probability calculations for contributor genotypes based on population allele frequencies (with Hardy-Weinberg equilibrium assumptions).
- Marginalizes over genotype configurations to estimate contributor fractions.
- Incorporates genotype uncertainties and unobserved alleles (drop-outs) using dummy alleles and priors.
- Quantifies confidence intervals of contributor fractions (e.g., via Cramér-Rao bound).
- Addresses complex mixture deconvolution including contributors of unknown genotypes.
- Uses statistical models to combine observed true positives (allele counts) and model potential unobserved alleles, thus accounting for false negatives implicitly via drop-out modeling.
- Applies to DNA mixtures including cfDNA or cellular DNA, which is relevant to genetic diagnosis.
- Bayesian framework integrates prior probabilities on genotypes given population data and observed allele counts to deliver posterior genotype and contributor fraction probabilities.
- Employs a likelihood function combining error distributions and prior genotype models, optimizing donor fractions via maximum likelihood.
- Offers genotype calling with credible intervals reflecting confidence.
  
These resonate structurally with Quant’s approach to combining prior genotype/allele probability models with observed variant allele data to quantify contributor fractions and genetic diagnosis confidence.

#### Key Differences

- The patent focuses on *deconvolution of mixed DNA samples* comprising multiple contributors (forensics, transplantation), determining each contributor’s fraction and genotype.
- Quant’s core novelty is genome-wide *prior probability calculation* of disease-causing variants per gene integrating *Hardy-Weinberg based priors* with observed/missing variant data to compute a *posterior probability of a complete genetic diagnosis* for an individual patient’s genome — not mixture deconvolution per se.
- This patent focuses on *fractional quantification* of DNA mixtures and contributor genotype probability; it does not address genome-wide gene-level prior pathogenic variant probabilities or diagnostic credible intervals per se.
- The concept of using true positives, false negatives, etc., in the context of calculating diagnosis certainty does not explicitly appear; rather, the patent models sampling errors and drop-out as part of mixture genotype inference.
- The patent’s problem setting is *mixture fraction quantification* and contributor genotype identification from a mixture sample, whereas Quant focuses on *variant pathogenicity assessment and diagnostic probability* in a single individual’s genome, integrating population prior probabilities.
- While both use Bayesian modeling, this patent does not explicitly integrate prior pathogenic variant probabilities into a diagnostic posterior, focusing instead on genotype configuration likelihoods and contributor proportions.

#### Conclusion

**Not blocking for Quant.**

The patent relates to probabilistic deconvolution of DNA mixtures and contributor genotype inference, primarily for forensics and transplant donor/recipient settings. Although it employs Bayesian inference, binomial and beta-binomial mixture models, and posterior genotype probabilities, it does not address Quant’s unique task of genome-wide pathogenic prior probability integration with observed/missing variant data to quantify the *posterior probability of a complete genetic diagnosis*.

It does not embody the core innovation of Quant — integrating prior probabilities of disease-causing variants with false negative modeling to establish diagnostic confidence selectively on a single patient's genome. Therefore, despite the use of similar statistical tools and Bayesian concepts, the technical scope and objective differ substantially.

---

# Summary

The evaluated patent uses Bayesian models and probabilistic mixture models to deconvolute *mixtures* of DNA contributors, accounting for unknown genotypes, and estimating contributor fractions and genotype posterior probabilities. Quant’s novel approach focuses on *integrating prior probabilities of pathogenic variant occurrence genome-wide with observed/missing variant data to quantify diagnostic certainty* for a single individual’s genome.

Accordingly, the patent does not block Quant’s core innovative technology.
