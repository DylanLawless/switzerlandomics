## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for diagnosing autism spectrum disorders
- **Publication No.:** US10655178B2
- **Publication Date:** 2020-05-05
- **Link:** https://patents.google.com/patent/US10655178B2/en

#### Abstract (excerpt)

> "The invention generally relates to compositions and methods for diagnosing the presence or an increased risk of developing autism spectrum disorders. The methods and compositions of the present invention may be used to obtain or provide genetic information from a subject in order to objectively diagnose the presence of an autism spectrum disorder (ASD), or an increased risk for that subject, or other subjects, to develop an autism spectrum disorder."

#### Relevant Overlaps

- Use of genetic variant detection (single nucleotide variants, deletions, insertions) in ASD-related genes to assist diagnosis.
- Sequencing-based assays (including massively parallel sequencing and Sanger sequencing) applied to nucleic acid samples from patients.
- Identification and classification of variants as known or novel, with assessment of deleteriousness based on functional predictions.
- Use of variant panels including genes like TSC1, TSC2, MECP2, SHANK3, HOMER1, and others relevant to autism.
- Statistical comparison of variant frequencies in affected vs. control populations to identify potentially causative variants.
- Mention of evaluating regulatory regions, splice sites, UTRs, and epigenetic elements in variant detection.
- Focus on autism spectrum diagnostic support by genetic variant identification.
- Extensive listing of variant calls and mutation types in specific genes (including missense, nonsense, splice site, silent).
- Use of large pooled DNA sequencing to detect rare variants, coupled with bioinformatics filters and allele frequency thresholds.
- Variant confirmation with Sanger sequencing to ensure low false positives.
- Diagnostic method includes detection of variants and assessment of their association with ASD phenotype.

#### Key Differences

- The patent does not describe calculating or integrating prior probabilities of variant pathogenicity under population genetics models such as Hardy-Weinberg Equilibrium.
- It lacks any quantitative Bayesian posterior probability calculation of a complete genetic diagnosis that incorporates observed true positives and false negatives.
- There is no modeling or explicit quantification of false negative rates or missing variant data.
- No indication that the method uses genome-wide priors or integrates prior allele frequencies with patient variant calls for diagnostic confidence intervals.
- Does not discuss or use TP, FP, TN, and FN states in a Bayesian framework to yield a probabilistic diagnostic score.
- The approach is centered on variant detection, variant classification, and association statistics, rather than a genome-wide probabilistic diagnostic certainty framework.
- Methods focused on variant panels for autism, not on general genome-wide Mendelian disease diagnosis confidence.
- No mention of generating credible intervals or uncertainty quantification around diagnostic likelihood.
- The patent emphasizes variant discovery and association in autism but does not extend to quantifying the likelihood of harboring a pathogenic variant at the gene or genome-wide level.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While the patent shares overlap with Quant in the use of sequencing and variant detection in disease-associated genes, including some of the same autism candidate genes (e.g., TSC1, TSC2, HOMER1, SHANK3), its methods do not extend to Quant’s unique innovation of integrating Bayesian genome-wide prior probabilities with observed and unobserved variant data to produce posterior probabilities and credible intervals of genetic diagnosis certainty. The patent focuses on identifying and associating variants with autism risk through sequencing and comparative statistics rather than Bayesian modeling of diagnostic confidence using TP/FN etc. Therefore, it does not block Quant’s core method or its novel diagnostic approach.
