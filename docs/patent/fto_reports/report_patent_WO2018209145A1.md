## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and compositions for determination of mutations in single replication events
- **Publication No.:** WO2018209145A1
- **Publication Date:** 2018-11-15
- **Link:** https://patents.google.com/patent/WO2018209145A1/en

#### Abstract (excerpt)

> "Methods and tools to elucidate exactly how mutations appear in the genome using detection of mutations in a cell lineage... methods for mutation detection in mammalian and bacterial cells during single replication events ... lineage sequencing ... genome-wide somatic mutation analyses that are unbiased by positive or negative selection."

#### Relevant Overlaps

- The patent describes *lineage sequencing* — isolating single cells from a clonal population derived from a single parent cell expanded over multiple generations; culturing sub-clonal populations; sequencing genomic DNA from each sub-clonal population.
- True somatic mutations are determined by *tracing mutations across the cell lineage* and mapping mutations to specific cell divisions (single-generation resolution).
- The method leverages *joint analysis of sequence libraries from multiple sub-clones* to suppress sequencing errors (false positives) and improve sensitivity.
- Detailed tracking of mutation flow through lineages and measurement of mutation spectra/signatures.
- Includes use of *microfluidic devices, optical tweezers, laser capture microdissection*, and live-cell imaging to isolate and track single cells.
- The data analysis involves clustering *coincident SNVs* detected in multiple sub-clones consistent with prior or inferred lineage structure.
- Methods explicitly consider *false positive and false negative rates*, and provide confidence in mutation detection.
- Application includes both mammalian and bacterial cells.
- The method includes *quantitative measurement of mutation rates, mutation spectra, and correlations among mutations*.
- Expressly discusses *processing of true positive (TP), false positive (FP), true negative (TN), and false negative (FN)* variant calls in its pipeline.
- Detects mutations not only by simple prediction but by *joint Bayesian/statistical modeling of the likelihood of mutations across lineage data*, leveraging knowledge of observed vs. unobserved mutations.

#### Key Differences

- This patent’s method is primarily oriented toward *direct detection and mapping of somatic mutations* by sequencing sub-clonal descendants from single progenitor cells — i.e., actual physical observation and sequencing of cell lineages.
- It does **not** describe or claim integrating *prior population-level probabilistic models* (e.g., Hardy-Weinberg Equilibrium priors) with patient-level observed/missing variant data to compute *Bayesian posterior probabilities of complete genetic diagnoses* as Quant uniquely does.
- There is no disclosure of combining known pathogenicity classification scores, inheritance mode, or population allele frequencies to compute *posterior probabilities reflecting confidence of a full genetic diagnosis*, nor explicit modeling of false negatives due to unsequenced or missing variants in patient genomes.
- The patent is focused on *mutation discovery, mutation rate quantification, and mutational signature analysis* rather than diagnostic certainty or probabilistic diagnosis.
- The invention emphasizes *sequencing experimental designs and lineage-tracking technologies* rather than computational inference of diagnosis confidence.
- Quant’s innovation lies in genome-wide probabilistic modeling integrating prior and observed data per variant and gene—this patent does not teach or suggest such models.
- Although the patent mentions TP, FP, FN etc., these refer to variant call accuracy in sequencing data rather than Bayesian integration of prior pathogenic probability with observed variants in a patient genome diagnostic context.

#### Conclusion

Not blocking for Quant.

---

### Summary

While WO2018209145A1 broadly covers methods for detecting somatic mutations via lineage sequencing by culturing single cells, sequencing their progeny, and analyzing shared mutations across sub clones to accurately identify true mutations and mutation rates, it does so without the key novel features of **Quant**:

- Quant calculates **genome-wide prior probabilities of pathogenic variants under Hardy-Weinberg Equilibrium**.
- Quant **integrates prior probabilities with patient-specific observed and missing variant data** using a Bayesian framework.
- Quant computes **posterior probabilities of a complete genetic diagnosis**, explicitly quantifying false negative mutation probabilities and providing credible intervals for diagnostic certainty.
- The patent is focused on somatic mutation detection per se, in experimental lineage contexts, rather than genomic diagnosis probability modeling.

Therefore, the patent is technically **distinct** and does not block Quant, which is centered on probabilistic diagnostic modeling integrating observed variant data and genomic prior probabilities.

---

If you have other patents or publications for analysis, please provide them, and I will continue accordingly.
