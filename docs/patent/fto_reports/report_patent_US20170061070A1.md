## Patent/Publication Analysis

### Reference #1

- **Title:** Method and process for whole genome sequencing for genetic disease diagnosis
- **Publication No.:** US20170061070A1
- **Publication Date:** 2017-03-02
- **Link:** [https://patents.google.com/patent/US20170061070A1/en](https://patents.google.com/patent/US20170061070A1/en)

#### Abstract (excerpt)

> "The process of the present invention is used to perform nucleotide sequence variant detection using two or more independent analysis methods to produce a superset of highly sensitive variant calls. The process of the present invention is used for genetic disease diagnosis including the steps of genome sequencing, creating a superset of sensitive variant calls by using at least two independent analysis methods, comparing a database of genetic diseases with disease phenotype information to produce a prioritized list of probable genetic diseases, and integrating the superset of sensitive variant calls and the prioritized list of probable genetic diseases."

#### Relevant Overlaps

- Use of multiple (two or more) independent sequence alignment and variant detection pipelines to increase sensitivity for variant detection.
- Generating a superset of variant calls for diagnosis rather than relying on a single pipeline result.
- Cross-referencing detected variants with disease phenotype databases to prioritize probable genetic diseases.
- Use of population allele frequencies (filtering variants by frequency).
- Clinical interpretation software aids variant prioritization and diagnosis.
- Application to whole genome and whole exome sequencing data for Mendelian disease diagnosis.
- Recognition of challenges related to sensitivity and specificity in variant calling and the importance of detecting rare variants.
- Incorporation of phenotype-driven gene panels or candidate gene lists to limit analysis.
- Use of trio (parent-child) sequencing to improve interpretation of de novo versus inherited variants.

#### Key Differences

- The patent focuses on improving sensitivity and variant detection through combination of multiple alignment and variant calling methods (e.g., GSNAP+GATK, iSAAC+starling), producing a superset of variant calls. This is primarily a bioinformatics pipeline improvement to increase variant detection sensitivity.
- It emphasizes variant detection, annotation, and prioritization steps but does **not** describe or claim methods that calculate genome-wide prior probabilities.
- No explicit modeling of false negatives (unobserved variants) or integration of prior variant probabilities with patient-specific observed and missing data to produce Bayesian posterior probabilities of a complete genetic diagnosis.
- Does not explicitly incorporate Hardy-Weinberg Equilibrium or inheritance mode modeling to compute variant or gene-level prior probabilities genome-wide.
- Lacks explicit calculation or reporting of credible intervals or uncertainty bounds around the genetic diagnosis.
- The patent is centered on pipelines and sequencing architectures to increase variant detection and expedite turnaround time for diagnosis, rather than probabilistic Bayesian inference of diagnostic certainty integrating TP, FP, FN, TN metrics.
- The use of "prior probabilities" and "posterior probabilities" in a probabilistic framework over the whole genome to estimate confidence in diagnosis is not disclosed.
- The clinical interpretation relies on filtering and ranking variant calls based on frequency and phenotype matching, rather than on a statistical model quantifying overall probability of a disease-causing variant given observed and missing variants.
- The patent is broader and methodical in variant detection and annotation but does not implement Quant's unique integrated Bayesian diagnostic certainty model.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While the patent describes advanced methods for improved variant detection via combining multiple sequencing and variant calling pipelines and prioritizing variants by phenotype and population data, it lacks any teaching or claim of integration of genome-wide prior probabilities, explicit Bayesian modeling of observed and unobserved variants (TP, FN), and calculation of credible intervals for diagnostic confidence — the core innovations of Quant. Therefore, this patent does not block Quant’s novel approach to genome-wide Bayesian disease diagnosis certainty.
