## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for improved predictions of polygenic phenotypes across diverse populations  
- **Publication No.:** WO2025085574A1  
- **Publication Date:** 2024-06-27  
- **Link:** https://patents.google.com/patent/WO2025085574A1/en

#### Abstract (excerpt)

> "Systems and methods for predicting a medical trait in an individual are provided. The techniques include obtaining genomic data including information indicative of genetic variants present in a genome of the individual and calculating, using an at least one processor and a trained computational model, a trait score based on the information indicative of the genetic variants, wherein the trained computational model was obtained by training a first computational model using data describing phenotypes, genotypes, and/or phenotype-genotype relationships for a population including admixed individuals of multiple ancestries."

#### Relevant Overlaps

- Training computational models using phenotypes, genotypes, and phenotype-genotype relationships from ancestry-diverse populations including admixed individuals.
- Generating trait scores (polygenic scores) indicative of medical traits.
- Use of penalized regression (e.g., Elastic Net), batch screening iterative lasso (BASIL) regression for model training.
- Inclusion of covariates such as principal components representing ancestry.
- Use of meta-analysis and heterogeneity tests (Cochran’s Q) to identify variants with heterogeneous effects across populations.
- Methods to model ancestry-shared and ancestry-dependent variant effects.
- Consideration of biological priors in penalty factors for regression.
- Altering clinical decisions or trial recruitment based on trait scores.
- Use of GWAS summary statistics and individual-level data.
- Application to various phenotypes: anthropometric, hematological, blood pressure, binary traits.

#### Key Differences

- **Quant Focus:** Quant uniquely combines genome-wide prior probabilities with observed/missing variant data to compute a Bayesian posterior probability quantifying diagnostic certainty, explicitly modeling false negatives and inheritance modes. It provides credible intervals for diagnosis confidence, rather than just trait scores or risk predictions.

- **Patent Focus:** The patent focuses primarily on training polygenic score models to predict a medical trait by extending standard PGS approaches with ancestry-diverse training samples, heterogeneous effect modeling, and use of penalized regression to improve cross-ancestry predictive accuracy.

- There's no explicit explicit teaching or claim of integrating prior probabilities with missing/false negative variant data in a Bayesian framework to provide posterior probabilities of complete genetic diagnosis, including credible intervals.

- The patent’s main innovation is in improving PGS transferability via ancestry-diverse data and refined regression methods, not quantifying diagnostic confidence per variant/gene or explicitly integrating missingness probabilities.

- Although Bayesian or probabilistic language appears broadly (via penalized regression, shrinkage priors), the core conceptual advancement of Quant — deriving a Bayesian posterior probability of a complete genetic diagnosis accounting for TP, FP, TN, FN variant classes genome-wide — is absent.

- The patent describes using the trait score to support clinical decision-making or trial enrolment, which overlaps broadly with Quant’s intended use but without the theory for diagnostic confidence intervals.

#### Conclusion

**Not blocking for Quant.**

Rationale: While this patent covers methods for building ancestry-diverse polygenic score models and improving prediction across populations, it does not address or claim the core novelty of Quant—integrating genome-wide prior probabilities with observed/missing variant data to generate Bayesian posterior probabilities of genetic diagnosis certainty with credible intervals, explicitly modeling false negatives and inheritance modes. The overlap is at the level of PGS modeling and ancestry considerations, not the Bayesian diagnostic confidence quantification that defines Quant’s innovation.

---

### Summary

The patent WO2025085574A1 discloses methods for polygenic score modeling trained on diverse populations including admixed individuals, employing penalized regressions and heterogeneity analyses to improve cross-ancestry phenotype prediction. Although these are related fields and share data sources and PGS modeling concepts, they are materially different from and thus not blocking to Quant’s core Bayesian genome-wide prior/posterior diagnostic probability framework with integration of false negative variant probabilities and credible intervals.
