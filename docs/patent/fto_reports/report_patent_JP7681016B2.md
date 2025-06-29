## Patent/Publication Analysis

### Reference #1

- **Title:** Somatic variant calling from unpaired biospecimens
- **Publication No.:** JP7681016B2
- **Publication Date:** [Not available — priority claimed from US provisional 2019-11-05]
- **Link:** https://patents.google.com/patent/JP7681016B2/en

#### Abstract (excerpt)

> NA (detailed description used)

#### Relevant Overlaps

- Use of machine learning models (including gradient boosting decision trees and two-model classification with filtering and rescue submodels) to predict somatic variants from tumor-only (unpaired) sequencing data.
- Generating an attribute table with multiple features per candidate variant, including allele frequency, base quality, read depth, tumor purity estimates, variant population frequency (gnomAD, Cosmic, DBSNP, Mills Indels), copy number changes, and homopolymer region annotations.
- Training models on tumor-normal paired datasets but applying models to unpaired tumor data without matched normal samples to identify somatic variants.
- Using Bayesian-inspired or machine-learning filtering to reduce false positives and rescue false negatives in somatic variant calling.
- Producing reports of identified somatic variants potentially including diagnostic, prognostic, and treatment recommendation information.

#### Key Differences

- Quant’s novel focus lies in integrating genome-wide prior probabilities of pathogenic variant occurrence (accounting for Hardy-Weinberg equilibrium and inheritance modes) with patient-specific true positive and false negative variant data to calculate a Bayesian posterior probability of a complete genetic diagnosis — explicitly modeling diagnostic certainty with credible intervals.
- JP7681016B2 focuses on high-sensitivity somatic variant calling from tumor-only samples by applying machine learning to variant features for somatic vs. germline classification, but does not disclose calculating genome-wide prior probabilities of disease-causing variant observation or a Bayesian framework that integrates prior and patient-level missingness data (false negatives) to assess diagnostic confidence.
- This patent centers on somatic variant detection and filtering at the variant-level, not on deriving gene-level disease probabilities, genome-wide risk rankings, or credible posterior intervals for diagnosis certainty as Quant uniquely provides.
- Although both use machine learning and incorporate external databases (gnomAD, ClinVar indirectly via population frequencies), the JP patent does not describe integrating these databases into a comprehensive probabilistic model of diagnosis certainty that accounts for all outcomes (TP, FP, TN, FN).
- The JP patent’s focus on tumor-only somatic variant identification using ML classifiers with feature tables is conceptually distinct from Quant’s genome-wide variant probability framework integrating population genetics priors and Bayesian posteriors of pathogenicity presence or absence.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While JP7681016B2 discloses machine learning-based somatic variant calling from unpaired tumor samples using feature tables capturing variant attributes and filtering/rescue models to improve variant classification, it does not disclose nor suggest Quant’s unique innovation of calculating genome-wide prior probabilities under genetic models, integrating observed and unobserved variants across inheritance modes, and deriving Bayesian posterior probabilities with credible intervals to quantify diagnostic certainty at both variant and gene levels. The theoretical foundation and ultimate purpose differ meaningfully. Therefore, JP7681016B2 does not block Quant’s FTO.
