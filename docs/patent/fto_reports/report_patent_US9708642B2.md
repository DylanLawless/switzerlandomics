## Patent/Publication Analysis

### Reference #1

- **Title:** Method and system for DNA mixture analysis  
- **Publication No.:** US9708642B2  
- **Publication Date:** 2017-07-18  
- **Link:** https://patents.google.com/patent/US9708642B2/en  

#### Abstract (excerpt)

> "The present invention pertains to a process for automatically analyzing mixed DNA samples... This DNA mixture analysis is useful for finding criminals and convicting them... This analysis provides confidence measures in the results it computes... The process automates a tedious manual procedure, thereby reducing the cost, time, and effort involved in DNA forensic analysis."

#### Relevant Overlaps

- Both Quant and this patent address analysis of genetic variant data with quantitative modeling in a Bayesian/statistical framework.
- The patent uses linear matrix models (d = G·w + e) to represent mixture data and contributor genotypes.
- It applies least squares regression, optimization, and confidence/variance measures derived from residual errors.
- It explicitly models contributors’ mixture weights and deconvolves unknown genotypes via optimization over mixture proportions.
- Variance estimates and confidence intervals underpin calculation of likelihoods and likelihood ratios comparing genotype hypotheses.
- The use of bootstrapping and Monte Carlo methods to estimate confidence in genotype and mixture weight estimates.
- Bayesian-style posterior genotype probabilities and likelihood ratios integrating prior genotype frequencies and data likelihoods.
- The patent integrates observed quantitative data with probabilistic modeling to estimate genotype and mixture certainty.
- Quant and the patent both emphasize statistical confidence in inference, rather than only classifying variants or genotypes.
- The patent’s approach extends to multiple unknown contributors and handles missing/ambiguous genotype data through probabilistic means.

#### Key Differences

- The patent targets forensic DNA STR mixture analysis—resolving individual contributors’ genotypes and mixture ratios from mixed biological samples.
- Quant focuses on genome-wide prior probabilities of pathogenic variants integrated with observed/suspected variant calls to quantify genetic diagnostic certainty in clinical genomics.
- Quant uniquely models false negative probabilities for unobserved pathogenic variants in the diagnostic context, explicitly integrating prior probabilities genome-wide to produce credible intervals on disease diagnosis confidence.
- The patent analyzes mixture proportions and genotype deconvolution as a purely linear algebraic and optimization problem for contributor identification, rather than integrating variant pathogenicity priors or deriving credible intervals for diagnosis confidence.
- Quant’s novelty lies in integrating population-level priors with observed missing data (TP, FN, FP, TN) across all genes and inheritance modes, whereas the patent focuses on mixture deconvolution of known or unknown contributors in forensic samples.
- The patent does not discuss or address genome-wide variant pathogenicity estimation or diagnostic posterior probabilities from clinical or genetic variant data.
- The primary domain and application differ substantially: forensic mixture genotyping vs clinical variant diagnostic probability quantification.
- Quant’s unique incorporation of Hardy-Weinberg equilibrium for prior probabilities and all-encompassing inheritance mode modeling is not addressed in the patent.
- The patent models genotype mixtures in fixed loci and polymorphic STR alleles, Quant operates on genome-wide variant probabilities integrating multiple variant annotation datasets.

#### Conclusion

Not blocking for Quant.

---

### Summary

Although both the patent and Quant use Bayesian and statistical modeling with genotype and mixture data, and both estimate confidence using likelihoods and bootstrapping, this patent focuses on forensic STR mixture analysis of multiple contributing individuals to resolve genotypes and mixture ratios. It does not overlap with Quant's fundamental innovation of integrating genome-wide prior probabilities, including false negative data, with patient variant data to quantify posterior probabilities of a full genetic diagnosis. The patent lacks any teaching or suggestion about estimating disease pathogenicity probabilities, leveraging Hardy-Weinberg equilibrium models across the genome, or providing credible intervals on diagnosis completeness incorporating TPs and FNs at a genome-wide scale. Therefore, while superficially related in use of Bayesian and linear modeling concepts, the technical methods and targeted problems are distinct, and the patent does not block Quant’s freedom to operate.
