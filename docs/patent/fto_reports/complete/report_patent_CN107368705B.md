## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and computer systems for analyzing genomic DNA of organisms  
- **Publication No.:** CN107368705B  
- **Publication Date:** 2018-09-25  
- **Link:** https://patents.google.com/patent/CN107368705B/en  

#### Abstract (excerpt)

> "The present invention relates to logic for analyzing nucleic acid sequence data that employs algorithms that result in substantial improvements in sequence accuracy and that can be used, for example, in conjunction with the use of long fragment reads (LFR) methods to phase sequence variation."

#### Relevant Overlaps

- The patent describes methods and computer systems to improve sequence accuracy by:
  - Partitioning genomic DNA into multiple aliquots each containing less than a haploid genome equivalent.
  - Tagging fragments with aliquot-specific barcodes.
  - Sequencing reads containing these barcodes and using them to determine the aliquot of origin.
  - Constructing graphs and applying fuzzy inference systems to phase heterozygous variants across the genome.
  - Use of LFR to generate phased diploid assemblies.
  - Error correction by identifying inconsistent variants using phased haplotypes.
  - Use of Bayesian or probabilistic models (e.g. fuzzy logic) to assess linkage strengths.
  - Quantification of coverage, response rates and quality scores to enhance variant calling.
  - Detection of structural variations and repeat expansions using coverage and haplotype information.
- The patent emphasizes:
  - The assembly of phased haplotypes.
  - Use of sparse matrices and cluster analysis to identify diploid haplotypes.
  - Assigning parental origin using trios or population genotype data.
  - Anchoring phasing upon reliable variants and iteratively connecting subsequent loci.
  - Correction of PCR or sequencing errors by considering presence of variant in multiple aliquots.
  - Application to low-input samples such as single-cell or small cell numbers.
  - Comprehensive genome assembly with <1 false SNV per Mb and ~70%+ genome response.

#### Key Differences

- The patent focuses on producing a phased diploid assembly from reads tagged by aliquot barcodes using LFR technology but does **not** describe:
  - The quantification of **prior probabilities** of pathogenic variants or gene-level probability calculations.
  - The use of **Bayesian posterior probabilities of a complete genetic diagnosis** integrating prior probabilities with observed and unobserved variant data (e.g., false negatives).
  - The explicit modeling of disease inheritance modes or the generation of **credible intervals** representing diagnostic uncertainty.
  - The unique integration of population allele frequencies and clinical variant classifications to compute probabilities under Hardy-Weinberg equilibrium for disease-causing variants.
  - Numerical risk estimates or confidence measures for **diagnostic certainty** distinct from variant or haplotype phasing.

- While the patent discloses extensive haplotype phasing methods and error correction using aliquot tagging and graph methods, this is a **technical foundation** distinct from the **diagnostic probability modeling and variant pathogenicity quantification** emphasized as unique to Quant.

- The method does not appear to address the **integration of prior disease-causing variant probabilities with patient-specific variant observations and missing data modeling** that is central to Quant's novelty.

- The patent is primarily focused on genome sequencing, error reduction, haplotype phasing, and assembly, rather than downstream **clinical decision support** or **variant pathogenicity probability quantification**.

#### Conclusion

Potential overlap — recommend legal review.

- This patent covers Long Fragment Read (LFR) sequencing, haplotype phasing algorithms, and error correction methods that use aliquot-specific barcoding and graph-theoretic and fuzzy logic models.
- The Quant platform's novelty lies mainly in the **post-sequencing risk quantification and Bayesian integration of prior pathogenic probabilities with observed variant data to assess diagnostic certainty**, which is not addressed here.
- However, the extensive claims on LFR methods, barcoding, sequencing workflows, and phasing algorithms mean that there is substantial technical overlap regarding the **data generation and phasing stages**.
- A legal review should focus on the boundary between **sequencing/phasing** (potentially covered by this patent) and **Bayesian diagnostic probability modeling** (unique to Quant) to clarify freedom to operate.

---

# Summary

This patent is seminal in LFR sequencing and haplotype phasing technology underlying genomic data generation and error correction. Quant shares the upstream sequencing and phasing technical space but innovates downstream in the **probabilistic modeling of disease-causing variants**, integrating prior probabilities with observed/missing patient variant data to produce **posterior probabilities of genetic diagnosis** with credible intervals—features not disclosed in this patent.
