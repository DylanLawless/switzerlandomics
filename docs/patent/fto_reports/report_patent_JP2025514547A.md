## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and devices for parental origin disease allele detection for the diagnosis and management of genetic diseases
- **Publication No.:** JP2025514547A
- **Publication Date:** 2023-03-02
- **Link:** https://patents.google.com/patent/JP2025514547A/en

#### Abstract (excerpt)

> "A method for assigning uniparental origin to haplotypes, subhaplotypes, or alleles associated with haplotypes, wherein chromosome-length haplotypes of a genome are generated and a methylation variable status of at least one imprinted methylation variable region (iDMR) is determined, and the iDMR methylation variable status is used to assign uniparental origin for each chromosome-length haplotype."

#### Relevant Overlaps

- Both Quant and this patent focus on genetic variant analysis and leverage genomic haplotype data.
- This patent specifically generates chromosome-length haplotypes and assigns parental origin by integrating methylation information from iDMRs.
- It uses long-range phasing data (e.g., Strand-seq and nanopore sequencing) combined with methylation data to assign uniparental origin (PofO) of haplotypes.
- The approach includes phasing observed variants and integrating methylation-based epigenetic data to infer the parental origin of each homologous chromosome.
- The patent also claims determination of PofO without requiring parental DNA data.
- Quant's innovation involves using prior probabilities, observed variant calls including false negatives, and Bayesian posterior probability to quantify diagnostic confidence genome-wide.
- Both systems utilize Bayesian or probabilistic frameworks, but Quant uniquely integrates prior probabilities with observed/missing data (TP, FN, FP, TN) for comprehensive diagnostic certainty, rather than just PofO determination or phasing.
- The patent describes applications in clinical diagnosis, variant curation, cancer risk management, and cascade genetic testing facilitation, similar to Quant’s intended use.

#### Key Differences

- The patent focuses on epigenetic-based parental origin assignment using imprinted methylation patterns and long-range phasing information.
- Quant is differentiated by explicitly modeling prior probabilities of pathogenic variants based on population data and observed variant evidence, including false negatives, to calculate a Bayesian posterior probability of a complete genetic diagnosis.
- Quant does not primarily claim or emphasize haplotype phasing or parental origin determination via methylation or epigenetics.
- The patent’s method centers on structural haplotype construction and parent-of-origin assignment, not on estimating the probability of disease causality integrating TP, FN, FP, TN variant observations.
- Quant’s innovation lies in quantifying genome-wide prior and posterior probabilities, providing diagnostic credible intervals—features not claimed or described in this patent.
- The patent does not describe handling false negative probabilities or modeling diagnostic confidence in Bayesian terms for complete genetic diagnoses, which are core to Quant.
- Use of TP, FN counts or Bayesian posterior probability of diagnosis from variant observation patterns is not disclosed.
- The patent relies on experimental methods (e.g., nanopore methylation sequencing, Strand-seq) to assign parental origin; Quant is primarily a computational framework integrating data sources and probabilistic modeling for diagnosis confidence.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
This patent discloses a method using haplotype phasing and imprinted methylation (iDMRs) to assign parental origin of haplotypes in human genomes, which shows technical resemblance to part of Quant’s theory of integrating haplotype and methylation data for parental origin assignment. However, Quant’s core novelty lies beyond parental origin assignment—specifically in leveraging variant-level prior probabilities, observed and missing variant calls, and explicitly modeling true and false positives/negatives to derive Bayesian posterior probabilities quantifying the confidence of a genetic diagnosis. The patent does not appear to disclose or claim the key Quant innovations around integrating prior probabilities and variant detection errors (TP, FN) to compute posterior diagnostic probabilities. Nonetheless, because both involve Bayesian interpretations of variant data and epigenetic information in clinical genetic diagnostic contexts, there is potential overlap that warrants detailed legal evaluation to clear freedom to operate.
