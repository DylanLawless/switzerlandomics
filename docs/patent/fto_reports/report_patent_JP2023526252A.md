## Patent/Publication Analysis

### Reference #1

- **Title:** Detection of homologous recombination repair defects
- **Publication No.:** JP2023526252A
- **Publication Date:** 2023-02-02
- **Link:** https://patents.google.com/patent/JP2023526252A/en

#### Abstract (excerpt)

> "Methods of generating a homologous recombination deficient (HRD) score, methods of determining a reference HRD score, methods of determining HRD status in a test subject with one or more cancer types, and/or methods of treating disease based on HRD status are provided. The disclosed methods improve the sensitivity and specificity of cancer detection assays and identifying patients who may benefit from PARP therapy."

#### Relevant Overlaps

- Uses **prior probabilities** or **statistical models** to generate an HRD score from patient-derived cell-free DNA (cfDNA) sequencing data.
- Incorporates *presence or absence of HRD nucleic acid variants* including SNVs, indels, structural variants, loss of heterozygosity (LOH), and copy number variations (CNVs).
- Detects and quantifies **heterozygous and homozygous deletions**, rearrangements (fusions), and calculates HRD scores based on segmentations of genome regions.
- Uses reference HRD scores generated from cancer-type specific cfDNA reference samples to determine HRD status in test subjects by Bayesian or probabilistic comparison.
- Employs **de novo fusion callers**, **CNV callers**, and **annotation modules** to identify and annotate pathogenic variants relevant for HRD.
- Reports include variant-level, gene-level probabilities, credible intervals, and incorporate **false negative probability considerations**, e.g., when tumor content is low.
- The approach is genome-wide, integrating multiple variant types (SNVs, indels, CNVs, rearrangements) and considers **biallelic inactivation** for HRR genes.

#### Key Differences

- Although Bayesian probabilities are mentioned, the patent **does not explicitly integrate prior genome-wide variant observation probabilities with observed/missing variant data to yield a Bayesian posterior probability of a diagnosis**, as Quant does.
- The patent appears focused on **detection of HRD via scoring genomic instability (LOH, CNV, rearrangements) and variant annotation**, but **does not utilize explicit true positive/false negative modeling of patient-level observed vs. unobserved pathogenic variants** to calculate diagnostic credible intervals.
- The method hinges on identifying loss-of-function variants (biallelic or monoallelic) via direct variant and copy number analysis but does not present a framework that converts these into genome-wide prior/posterior risk probabilities for **genome-wide variant pathogenicity** or **diagnostic confidence**.
- Quant’s key innovation is modeling **prior probabilities of variant observation under Hardy-Weinberg Equilibrium and inheritance mode** plus false negative probabilities (unobserved invasive variants), **rather than solely computing an HRD score or variant calls from sequencing data**.
- The patent relates specifically to **HRD status in cancer**, whereas Quant’s platform is genome-wide, disease-agnostic, and integrates all human genes and inheritance modes under a unified probabilistic framework.

#### Conclusion

**Not blocking for Quant.**

While JP2023526252A covers methods for detecting HRD via variant calls, LOH, CNV, and fusion detection in cfDNA with Bayesian classifiers for presence vs. absence status, it does **not claim or describe the core novelty of Quant**: integrating genome-wide prior probabilities of pathogenic variant observation with patient-specific data, including false negatives, to calculate Bayesian posterior diagnostic probabilities with credible intervals. The patented methods focus on generating HRD scores and variant calls rather than a genome-wide diagnostic confidence framework based on modeling true positives and false negatives. Hence, it does not pose a blocking risk for Quant’s novel method.
