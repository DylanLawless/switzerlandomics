## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for simulating quasi-embryo genotypes and approximating disease risk
- **Publication No.:** CN118339311A
- **Publication Date:** 2022-09-23
- **Link:** https://patents.google.com/patent/CN118339311A/en

#### Abstract (excerpt)

> "Disclosed herein are methods of determining probability of disease distribution associated with a quasi-embryo by: generating phased parent chromosomes, determining one or more meiotic recombination sites of interest, and generating one or more simulated embryo genotypes. A polygenic risk model may be applied to each simulated embryo genotype to generate a polygenic risk score and determine the probability of disease distribution of one or more diseases of the quasi-embryo."

#### Relevant Overlaps

- The patent discloses generating phased parental chromosome sets and simulating embryo genotypes based on meiotic recombination models.
- Application of polygenic risk scores (PRS) or polygenic risk models to simulated embryo genotypes to estimate disease distribution probabilities.
- Incorporates population data and phased genotypes, including sibling genomic information, to improve phasing accuracy.
- Use of Bayesian or probabilistic models (HMM) to reconstruct parental haplotypes and embryo genotypes.
- Generation of credible risk scores and disease risk distributions from simulated embryo genotypes.
- Optionally normalizing PRS using population or ancestry-specific data before deriving disease risk.
- Produces disease risk likelihood reports which can inform clinical decisions such as IVF cycle recommendations.

#### Key Differences

- The patent focuses exclusively on preimplantation genetic testing (PGT) contexts, aiming to predict disease risk in simulated embryos for IVF decision-making.
- It mainly addresses how to simulate embryo genotypes and calculate polygenic risk scores reflecting complex traits influenced by multiple variants.
- The method stops at estimating disease risk distribution and relative risk based on simulated genotypes and polygenic scores.
- There is no mention or integration of true positive (TP), false negative (FN), true negative (TN), or false positive (FP) variant observations in a patient-specific context.
- The patent does not describe quantifying the Bayesian posterior probability of a complete genetic diagnosis by combining genome-wide prior probabilities of disease-causing variants with observed or missing patient-specific variant data.
- Does not model inheritance modes (autosomal dominant, recessive, X-linked) influencing variant occurrence probabilities under Hardy-Weinberg equilibrium.
- Lacks explicit integration of false negative probabilities linked to sequencing coverage or unobserved variants.
- The statistical approach is centered on polygenic risk scoring of genotype simulations rather than diagnostic confidence as a probability of harboring causative variants accounting for observed and missing data.
- The patent does not provide credible intervals or uncertainty bounds specifically quantifying diagnostic certainty for individual patients based on variant-level and gene-level probabilities.
- Quant’s novelty involves integrating prior probabilities and observed/missing variant data into a Bayesian posterior for diagnosis certainty, which is fundamentally absent in this patent.

#### Conclusion

Not blocking for Quant.

**Rationale:** While this patent applies Bayesian and probabilistic models to simulate embryo genotypes and estimate disease risk from polygenic scores, it does not employ or disclose the core innovation of Quant: combining genome-wide prior probabilities with observed patient variant calls and explicitly modeling false negatives/positives to compute a Bayesian posterior probability quantifying diagnostic certainty. The focus here is on risk prediction in embryo simulation and IVF, not on clinical diagnosis confidence integrating TP/FN modeling at the patient level. Thus, despite both involving Bayesian methods and genetic probabilities, the theoretical framework, technical implementation, and end goals substantially differ from those of Quant.
