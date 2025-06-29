## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of detecting somatic mutations  
- **Publication No.:** US20230084773A1  
- **Publication Date:** 2023-03-16  
- **Link:** https://patents.google.com/patent/US20230084773A1/en  

#### Abstract (excerpt)

> "Methods for detecting somatic mutations in single cells are described. Specifically, the disclosure provides methods of identifying somatic mutations in individual cells, comprising: providing a compartment containing only one somatic cell; generating genomic DNA and mRNA sequencing reads from the somatic cell; identifying potential mutations from the genomic DNA and mRNA sequencing reads relative to a control sequence; discarding artifact differences in the sequencing reads, thereby identifying somatic mutations in the individual cells compared to a control sequence."

#### Relevant Overlaps

- Use of combined DNA and RNA sequencing reads from single or clonally expanded somatic cells to identify mutations.
- Filtering sequencing artifacts by cross-validation of variants between DNA and RNA data.
- Employing haplotype SNP linkage to distinguish true somatic mutations from amplification artifacts.
- Use of allele frequency thresholds to exclude artifacts.
- Application in determining mutational burden in cells for clinical or research purposes.
- Use of compartments (e.g. droplets, microtiter wells) for isolating single cells.
- Amplification techniques such as multiple displacement amplification (MDA) prior to sequencing.
- Clonal expansion of single cells to overcome low input DNA issues.
- Statistical and experimental approaches to maximize sensitivity and specificity of mutation detection.

#### Key Differences

- The patent focuses exclusively on detecting somatic mutations and distinguishing true mutations from sequencing/amplification artifacts at the single-cell level.
- There is no disclosure or suggestion of integrating prior probabilities of variant pathogenicity or disease causality derived from population genetics or public databases like gnomAD or ClinVar.
- The patent does not address genome-wide calculation of prior probabilities of observing disease-causing variants under Hardy-Weinberg equilibrium or modes of inheritance.
- No model or method is provided for integrating observed true positives and estimating false negatives to calculate a Bayesian posterior probability quantifying confidence in a complete genetic diagnosis.
- The emphasis is on mutation detection accuracy and mutational burden estimation, not on probabilistic variant interpretation or diagnostic certainty intervals.
- Does not describe combining multiple variants or gene-level aggregation to assess disease causality probability genome-wide.
- Lacks mention of clinical or disease-specific risk estimates based on integrated variant evidence.
- No use or mention of credible intervals or uncertainty quantification for diagnosis likelihood.

#### Conclusion

Not blocking for Quant.

---

**Summary:** While US20230084773A1 extensively discloses methods for accurately detecting somatic mutations in single cells by integrating DNA and RNA sequencing and filtering artifacts, it does not overlap with Quant’s core innovation. Quant uniquely integrates genome-wide prior disease-causing variant probabilities with patient-specific observations, encompassing false negative modeling and Bayesian posterior estimation of diagnostic confidence. This patent is focused on mutation detection fidelity rather than probabilistic genetic diagnosis, so it is not blocking.
