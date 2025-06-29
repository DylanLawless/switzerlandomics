## Patent/Publication Analysis

### Reference #1

- **Title:** Jointly used genetic marker trait for diagnosis of Alzheimer's disease, and diagnostic method and kit
- **Publication No.:** JPH09511138A
- **Publication Date:** 1997-03-11 (Japanese patent application publication date)
- **Link:** [https://patents.google.com/patent/JPH09511138A/en](https://patents.google.com/patent/JPH09511138A/en)

#### Abstract (excerpt)

> "At least two selected from apolipoprotein E, D19S178 and apolipoprotein CII, especially apolipoprotein ε4, long apolipoprotein CII (30 +/- 3 repeat pattern (CA)) and short chain D19S178 (less than 167 +/- 4 nucleotides) alleles are jointly used. The invention also relates to a method and kit for diagnosing Alzheimer's disease using at least two of these genetic marker traits."

#### Relevant Overlaps

- Use of genetic marker traits (allelic variants APOEε4, D19S178 short allele, long APO CII allele) for diagnosis of Alzheimer's disease.
- Statistical analysis of allele and haplotype frequencies in patient and control groups.
- Use of PCR amplification and allele detection methods to identify presence/absence of specific alleles.
- Association of allelic marker combinations with increased risk (odds ratios) for disease.
- Some use of logistic regression and linkage disequilibrium analysis for genetic association.

#### Key Differences

- The patent focuses specifically on identifying the presence or absence of particular marker alleles by direct testing and then associating these markers statistically with disease risk.
- It does not propose a genome-wide estimation of prior probabilities of pathogenic variants or calculation of posterior probabilities of a complete genetic diagnosis.
- No integration of observed variant calls with estimated false negatives or modeling of diagnostic confidence intervals.
- No Bayesian framework combining prior population allele probabilities with patient-specific data for evaluating diagnostic certainty.
- The method is limited to a small set of genetic loci associated with Alzheimer's disease rather than a scalable, genome-wide variant probability platform.
- Outputs are risk or odds ratios for Alzheimer's disease associated with marker combinations, not credible intervals or diagnostic confidences.
- No consideration of inheritance modes or Hardy-Weinberg Equilibrium modeling beyond standard population genetics for polymorphism frequency.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** This patent is primarily about detecting specific Alzheimer's disease-associated genetic markers and their statistical association with disease risk. It does not share Quant’s core innovation of genome-wide Bayesian integration of prior probabilities with true/false positive and negative variant observations to generate posterior probabilities of complete genetic diagnoses with quantifiable uncertainty. The patent’s data analysis is classical association testing on defined polymorphisms, not a probabilistic diagnostic confidence model considering false negatives and completeness of genetic information. Therefore, it does not present a substantial technical overlap that would block Quant.
