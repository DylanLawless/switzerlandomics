## Patent/Publication Analysis

### Reference #1

- **Title:** 非侵襲性出生前親子鑑定法 (Noninvasive prenatal testing)
- **Publication No.:** JP6328934B2
- **Publication Date:** [Not Available]
- **Link:** https://patents.google.com/patent/JP6328934B2/en

#### Abstract (excerpt)

> "Disclosed herein is a method for determining paternity of a fetus that is conceived in a non-invasive manner. The method obtains genotype measurements at multiple polymorphic loci for genetic material derived from a pseudofather, maternal genetic material, and a mixed sample of fetal and maternal DNA from maternal blood, and determines by computer the probability that the pseudofather is the actual father of the fetus."

#### Relevant Overlaps

- Bayesian statistical modeling integrating prior allele frequencies with observed maternal plasma mixed fetal-maternal DNA data.
- Use of polymorphic loci (primarily SNPs) across the genome.
- Computation of a test statistic reflecting genetic similarity between putative father and fetus.
- Consideration of both observed data and potential false negatives (e.g., allele drop-out).
- Use of prior population allele frequencies (e.g., HapMap or gnomAD) in statistical analysis.
- Estimation of fetal fraction (fetal DNA proportion) in maternal plasma, including partitions over possible values.
- Calculation of posterior probability (using maximum likelihood or maximum a posteriori methods) that the alleged father is the true biological father.
- Incorporation of false positive/negative rates and generation of paternity inclusion or exclusion calls with associated confidence intervals.
- Modeling of haplotypes and parental phasing to enhance determination accuracy.
- Sequencing or SNP array-based genotyping of maternal, paternal, and mixed samples.
- Handling of low fetal fraction and noisy sequencing data with probabilistic modeling.
- Integration of possible false negatives (e.g., in missing variant detection) in Bayesian framework.
- Reports summarizing likelihood of paternity and confidence scores.
- Non-invasive sample types including maternal plasma cfDNA and isolated single fetal cells.

#### Key Differences

- The patent focuses specifically on non-invasive prenatal paternity testing (NIPPT) via analysis of maternal plasma cfDNA or isolated fetal cells. The primary goal is paternity determination.
- The method models genetic similarity at polymorphic loci to compute probability of paternal relationship but does not describe or claim genome-wide estimation of prior probabilities for **disease-causing variants** or Bayesian posterior probability of a **genetic diagnosis**.
- The patent does not address the systemic genome-wide modeling of variant pathogenicity priors under Hardy-Weinberg Equilibrium integrating observed/missing variant data (TP, FN etc) for rare disease diagnosis.
- The methodology focuses on allele frequency modeling for paternity inference, not on estimating the probability of observing pathogenic alleles across genes with regard to different modes of inheritance or quantifying diagnostic certainty with credible intervals.
- The math is applied towards paternity likelihood ratio tests, whereas Quant’s novelty is in combining prior pathogenic variant probabilities with patient-specific variant evidence (including false negative models) to estimate diagnostic confidence.
- The patent does not address credible intervals or uncertainty quantification explicitly for genetic diagnoses.
- The patent also lacks explicit modeling for false negatives in variant detection genome-wide for disease diagnosis, focusing instead on genotyping known polymorphisms informative for parentage.
- This patent is centered around statistical methods specific to prenatal paternity testing, not about genome-wide variant pathogenicity estimation or disease genetic diagnosis.
- Overlap is in using Bayesian approaches and population allele frequencies but applied in a different clinical context with a different problem and data type focus.

#### Conclusion

Potential overlap — recommend legal review.

---

**Rationale:**  
This patent discloses comprehensive Bayesian frameworks for non-invasive prenatal paternity determination by integrating paternal, maternal, and mixed fetal-maternal genotype data. It uses population allele frequencies and probabilistic models to calculate posterior probabilities of paternity inclusion or exclusion, managing data noise, fetal fraction estimation, and single-cell or cfDNA samples. These aspects superficially resemble Bayesian methods integrating prior probabilities with observed data.

However, Quant's core innovation lies specifically in modeling genome-wide prior probabilities of **disease-causing variants** and integrating these with observed and expected false variant calls, across different inheritance modes to compute Bayesian posterior probabilities of a **complete genetic diagnosis**. This entails a fundamental difference in objective, calculations, and technical focus.

Notwithstanding, because both involve Bayesian integration of prior genetic probabilities and observed genetic data from patients, and both explicitly compute posterior probabilities reflecting biological relationship (paternity vs diagnostic certainty), the overlap in theory and probabilistic infrastructure is significant enough to warrant a detailed legal review.

No documentation in the patent addresses quantification of genetic diagnosis confidence intervals from whole-genome variant data including TP/FN/FP/TN categorization used by Quant. Instead, it focuses on parental testing via polymorphic loci.

The large array of similar dataset usage (gnomAD, HapMap, SNP arrays) and statistical frameworks suggest the closest potential blocking overlap found.

---

*No other specific patents or publications were provided for review.*