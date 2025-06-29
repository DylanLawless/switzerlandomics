## Patent/Publication Analysis

### Reference #1

- **Title:** A method to distinguish diseased embryos from normal embryos with CNV microdeletion microduplication syndrome
- **Publication No.:** CN114480611A
- **Publication Date:** 2022-09-09
- **Link:** https://patents.google.com/patent/CN114480611A/en

#### Abstract (excerpt)

> "The invention relates to a method for identifying diseased embryos and normal embryos of CNV microdeletion and microduplication syndrome... family haplotype linkage analysis is carried out on a patient with Copy Number Variation (CNV) microdeletion microreplication syndrome, a spouse, an embryo after in vitro fertilization and a chromosome of a patient relative or a fetal tissue suffering from CNV microdeletion microreplication syndrome, so that a sick embryo and a normal embryo carrying CNV can be rapidly, simply and accurately distinguished... thereby improving clinical pregnancy rate and preventing genetic transmission of the disease."

#### Relevant Overlaps

- The patent describes a method involving:
  - Large-scale SNP genotyping of patient couples and relatives.
  - Selection of informative SNPs heterozygous in patient and homozygous in spouses and relatives.
  - Construction of family haplotypes covering CNV breakpoints and corresponding chromosomes.
  - Linkage analysis comparing haplotypes in embryos (blastocysts) to reference samples.
  - Use of SNP and haplotype data to identify presence or absence of pathogenic CNVs in embryos.
  - Biopsy and whole-genome amplification of embryos for SNP genotyping.
- These steps are centered on genotyping, haplotype construction, and using linkage analysis to distinguish embryos with or without pathogenic CNVs.

#### Key Differences

- The invention targets preimplantation genetic diagnosis focusing specifically on identifying CNV microdeletions/microduplications in embryos via family haplotype linkage analysis.
- There is **no disclosure or teaching of calculating prior genome-wide probabilities of pathogenic variants** or disease-causing variant frequencies across all genes.
- No integration of prior probabilities with observed and unobserved patient variant data to compute a Bayesian posterior probability of a complete diagnosis.
- No explicit consideration or modeling of false negatives or missing variants in diagnosis probability.
- The methodology is limited to haplotype construction and comparison for known disease-associated CNV regions and does not extend to probabilistic variant interpretation or genome-wide disease probability assessment.
- It does not utilize or describe a framework quantifying confidence intervals or credible intervals for diagnosis certainty.
- The focus is on CNV breakpoint-spanning SNP informative markers in nuclear families, not on probabilistic variant-level or gene-level likelihood calculations.
  
#### Conclusion

Not blocking for Quant.

**Rationale:** This patent relates to familial haplotype linkage analysis specifically for CNV microdeletion/microduplication syndromes in embryos and does not teach or suggest the core innovations of Quant—namely, integrating prior probabilities of pathogenic variants genome-wide with observed/missing data to calculate Bayesian posteriors quantifying genetic diagnostic certainty. There is no overlap on the use of true positive/false negative probabilities or Bayesian diagnostic confidence modeling fundamental to Quant’s novelty. The patent’s technical scope is distinct and focused on CNV haplotype analysis for embryo selection.
