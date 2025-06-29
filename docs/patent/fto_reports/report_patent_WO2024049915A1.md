## Patent/Publication Analysis

### Reference #1

- **Title:** High-resolution and non-invasive fetal sequencing  
- **Publication No.:** WO2024049915A1  
- **Publication Date:** 2024-04-11  
- **Link:** https://patents.google.com/patent/WO2024049915A1/en

#### Abstract (excerpt)

> "Abstract Provided herein are computer-implemented methods for assigning maternal or fetal origin to one or more genetic variants in cell free DNA (cfDNA) from a sample from a pregnant mammal, preferably a pregnant human, using a probabilistic model for assigning maternal or fetal origin to genetic variants in DNA from a sample obtained from a pregnant mammal, wherein the model assigns maternal or fetal origin based on a combination of fetal fraction and DNA fragment size."

#### Relevant Overlaps

- Both Quant and the patent employ **probabilistic/Bayesian mixture models** to interpret genomic variant data.  
- The patent uses a **Bayesian Gaussian Mixture Model** constrained by variant allele fraction (VAF) and fragment size rank sum statistics to assign maternal or fetal genotype to each variant site, simultaneously estimating fetal fraction as a latent variable.  
- The patent explicitly models mixtures of **true positives (TP)** and variant allele fractions incorporating **false negatives** indirectly (via coverage and cluster modeling), though the focus is on fetal vs. maternal origin assignment.  
- Use of **variant allele fraction distributions** and fragment size data to disambiguate variant origin closely relates to the quantification of variant probabilities from observed sequencing evidence.  
- Both apply probabilistic genotyping integrating empirical data to produce **likelihoods or posterior probabilities** for variant states.  
- The patent uses **machine learning classifiers (random forest)** to filter false positives and leverages the statistical properties of sequencing data — a concept aligned with Quant’s modeling of true positives and false negatives in integrating observed and missing variant data.  
- The patent’s Bayesian model incorporates latent variables and probabilistic assignment at the variant level, similar in spirit (though different in use) to Quant’s Bayesian integration of prior probabilities and observed variant calls to assess diagnosis confidence.

#### Key Differences

- Quant’s core innovation is **quantifying genome-wide prior probabilities of pathogenic variants under Hardy-Weinberg Equilibrium combined with integration of observed and missing variant data to compute a Bayesian posterior probability of complete genetic diagnosis**, with explicit modeling of false negatives at genome or gene level and clinically interpretable credible intervals.  
- The patent focuses on **assigning maternal or fetal origin** of variants from cfDNA mixtures using a Bayesian Gaussian Mixture Model primarily on variant allele fractions and fragment size to resolve fetal fraction and genotypes.  
- The patent does not explicitly address **disease-causing status**, diagnostic confidence intervals, nor integration of prior probabilities genome-wide as in Quant.  
- The scope is prenatal non-invasive testing to identify the **origin (maternal/fetal) of variants** in cell-free DNA, rather than genome-wide pathogenicity probability estimation or comprehensive diagnosis uncertainty as in Quant.  
- Quant integrates **population-level variant frequencies, clinical variant classifications, and panel inheritance modes** to estimate disease prior probabilities and patient-specific posterior probabilities, which is not present in the patent.  
- Quant models the **confidence of a complete genetic diagnosis** including false negatives due to coverage gaps, while the patent focuses on fetal fraction estimation and genotype assignment without extending to diagnosis certainty or disease risk assessments.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While this patent and Quant both use Bayesian mixture models and probabilistic assignment of variant genotypes informed by sequencing read characteristics, the patent’s focus is on maternal/fetal origin assignment in cfDNA based on fetal fraction and fragment size, whereas Quant innovates by integrating genome-wide prior probabilities for disease-causing variants with observed and unobserved variant data to compute Bayesian posterior probabilities about complete genetic diagnosis. There is no direct overlap with Quant’s unique diagnostic confidence quantification or genome-wide prior integration.
