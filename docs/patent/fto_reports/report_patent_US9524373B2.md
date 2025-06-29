## Patent/Publication Analysis

### Reference #1

- **Title:** Genome-phenome analyzer and methods of using same
- **Publication No.:** US9524373B2
- **Publication Date:** 2016-12-13
- **Link:** https://patents.google.com/patent/US9524373B2/en

#### Abstract (excerpt)

> "The invention features methods, devices, and systems for providing diagnostic or treatment decision support to a clinician for diagnosis or treatment of a patient, including receiving genetic sequencing information with severity scores and zygosity for variants and iteratively modifying estimated probabilities of candidate diseases using this information, optionally applying Bayesian methods."

#### Relevant Overlaps

- Uses genetic variant data with measures of zygosity and severity scores as inputs.
- Applies Bayesian iterative updating to modify disease probability estimates based on patient findings.
- Considers compound heterozygosity by aggregating severity scores of variants on the same gene.
- Categorizes variants by inheritance mode (autosomal monoallelic/biallelic, X-linked, etc.).
- Integrates genetic testing results with other clinical/laboratory findings to compute probabilities of candidate diseases.
- Generates ranked lists of candidate diseases and gene pertinence measures indicating influence of findings on diagnosis.
- Incorporates variant information from family members (parents, siblings) to refine zygosity and severity computations.
- Performs severity scoring either via direct input or computed quantitatively from multiple variant annotations and functional scores.
- Bayesian calculations use sets of estimated probabilities in diseased and healthy populations to iteratively update candidate disease probabilities.

#### Key Differences

- The patent focuses on scoring pathogenicity of variants and integrating these with clinical findings to produce probabilities of diseases.
- It provides severity scores for variants but does not explicitly describe genome-wide prior probabilities of observing disease-causing variants under Hardy-Weinberg Equilibrium.
- While it applies Bayesian updating for candidate disease probabilities, it does not explicitly model or quantify false negative variant detection or unobserved data, nor does it specifically calculate a Bayesian posterior probability of a *complete genetic diagnosis* accounting for missing variants.
- The approach is oriented primarily toward disease diagnosis support and generating ranked candidate disease lists, rather than producing genome-wide gene-level prior probabilities or credible intervals of diagnostic certainty.
- The patent does not explicitly address quantitative integration of TP, FP, TN, FN variant observation data to compute diagnostic confidence intervals.
- Compound heterozygosity is considered, but primarily for variant severity scoring, not for genome-wide prior/posterior disease probability estimation.
- The use of severity scores and zygosity differs from Quant’s approach, which shifts focus from variant-level pathogenicity scoring to integrating genome-wide variant probabilities with observed/missing data into Bayesian posteriors.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
Although this patent shares some Bayesian methods and uses genetic variant severity scoring with zygosity and compound heterozygosity analysis, it does not explicitly disclose Quant’s unique innovation of computing genome-wide *prior* probabilities of disease-causing variants under population genetics models and integrating these with observed/missing variant data to derive Bayesian posterior probabilities of a *complete genetic diagnosis* with credible intervals. The patent’s focus on diagnosis support via candidate disease probability ranking and variant/gene pertinence measures differs considerably from Quant’s probabilistic genome-wide variant observation framework and diagnostic confidence quantification based on TP/FN modeling. Thus, the overlap is superficial/conceptual and does not present blocking risk for Quant’s core technology.
