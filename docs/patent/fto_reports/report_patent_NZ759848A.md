## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for quantification and deconvolution of nucleic acid mixture samples including nucleic acid of two or more contributors of unknown genotypes
- **Publication No.:** NZ759848A (also US Patent Application No. 15/130,668 and others incorporated by reference)
- **Publication Date:** Various filings since 2017; detailed description as of at least 2020
- **Link:** https://patents.google.com/patent/NZ759848A/en

#### Abstract (excerpt)

> "Some implementations provide improved analytical sensitivity and specificity, providing more accurate deconvolution and quantification of nucleic acid mixture samples. Some implementations allow accurate quantification of nucleic acid mixture samples with nucleic acid quantities too low for conventional methods to accurately quantify... The disclosed embodiments also provide a computer program product including a non-transitory computer readable medium on which is provided program instructions for performing the recited operations and other computational operations described herein."

#### Relevant Overlaps

- Use of probabilistic mixture models (binomial, beta, beta-binomial distributions) to model allele counts at polymorphism sites.
- Bayesian framework integrating prior population genotype frequencies (including Hardy-Weinberg equilibrium assumptions) with observed allele counts.
- Modeling contributors' genotype configurations, marginalizing over unknown genotypes.
- Specific modeling of contributor fractions (β) in DNA mixtures, estimating these fractions by maximizing a likelihood function.
- Accounting for errors at multiple levels: extraction molecular sampling, PCR amplification variability, and sequencing errors.
- Employing numerical optimization, combining multi-iteration grid search with Broyden–Fletcher–Goldfarb–Shanno (BFGS) quasi-Newton method, to estimate contributor fractions.
- Unbiased mapping of sequence reads to polymorphism loci using hashing to match a set of “unbiased target sequences” accounting for reference and variant alleles and one-nucleotide-mutated sequences.
- Provision of confidence intervals on contributor fraction estimates via Hessian matrix of the log-likelihood.
- Ability to quantify mixtures with two or more contributors, including unknown genotypes or partially known baselines.
- Explicit modeling of false negative probabilities and uncertainties is implicit in the beta-binomial framework and confidence interval estimation.
- The method integrates prior probabilities of genotype frequencies with empirical allele counts to provide posterior probability estimates for contributor fractions, going beyond simple pathogenicity prediction or variant scoring.
- Use of multiple loci and fully genome-wide considerations (polymorphism loci selection, population allele frequencies).
- Application to clinical scenarios including transplantation monitoring, chimerism quantification, non-invasive diagnostics.
- The claims focus on the entire computational pipeline from extraction through sequencing, mapping using the unbiased database, to Bayesian quantification of contributor fractions with error modeling.

#### Key Differences to Quant

- Quant specifically focuses on genome-wide disease variant probabilities and diagnostic posterior probabilities integrating TP/FN to estimate a patient’s probability of carrying a causal variant.
- Quant’s novelty is in estimating posterior probability of a complete genetic diagnosis accounting for unobserved (false negative) data and inheritance modes.
- The patent relates primarily to quantification and deconvolution of contributor fractions in mixed DNA samples (e.g., chimerism in transplant patients).
- The patent’s main target problem is mixture decomposition and quantification of contributions of multiple genomes to a sample, whereas Quant is designed to estimate the disease-causing probability of variants genome-wide in individuals.
- While both use Bayesian probabilistic modeling and consider sequencing errors and allele counts, the patent focuses on estimating proportions of contributors in mixtures, not diagnosis probabilities of disease variants integrating observed and missing variant data.
- Although both methods use prior probabilities (population allele frequencies), the patent emphasizes genotype configuration priors and contributor fraction estimation rather than disease association.
- There is no discussion in the patent of integrating Hardy-Weinberg priors with prior probabilities of disease causal variants or computing credible intervals for diagnostic certainty.
- Quant’s core innovation lies in combining variant-level population priors with patient-level observed variant data and missing data (false negatives) to compute posterior probability of causal variant carriage, which is not disclosed in this patent.
- This patent’s claims and description encompass sequencing, mapping, and quantification of contributors but do not disclose or claim computing genome-wide disease variant priors or posterior probabilities of genetic diagnosis.
- The mapping method to remove reference bias is a technical detail distinct from Quant’s statistical integration of prior disease probabilities with observation data.

#### Conclusion

Not blocking for Quant.

---

**Summary:** Although this patent describes an advanced, computer-implemented probabilistic method for deconvolving and quantifying nucleic acid mixtures from multiple contributors using Bayesian models, beta-binomial distributions, and unbiased read mapping, it is conceptually and technically focused on estimating mixture fractions in chimerism or forensic contexts. Quant’s innovation of integrating genome-wide prior probabilities for disease-causing variants with patient variant call data to compute a Bayesian posterior probability of genetic diagnosis (including false negative modeling at clinical diagnostic level) is not found here. The patent lacks disclosure or claims related to diagnostic certainty intervals integrating TP/FN in the sense used by Quant. Therefore, while both use Bayesian approaches on variant/allele data, they address different problems with different model objectives, and this reference does not block Quant’s core novelty.
