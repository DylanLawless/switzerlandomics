## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for diagnosing autism spectrum disorders  
- **Publication No.:** US9834819B2  
- **Publication Date:** 2017-12-12  
- **Link:** https://patents.google.com/patent/US9834819B2/en

#### Abstract (excerpt)

> "The invention generally relates to compositions and methods for diagnosing the presence or an increased risk of developing autism spectrum disorders... The method may comprise the steps of obtaining a nucleic acid from a biological sample from a subject and conducting an assay to identify whether there is a variant sequence in the subject's nucleic acid... The method may further comprise using the variant profile... to diagnose the presence of an autism spectrum disorder or an increased risk..."

#### Relevant Overlaps

- The patent involves identifying sequence variants (known or novel) by assays such as nucleic acid sequencing and analyzing these variants for association with autism spectrum disorders.
- It describes detecting specific variants in a panel of genes implicated in autism, including variant discovery in genes like HOMER1, TSC1, TSC2, SHANK3, MECP2, among others.
- Uses next-generation sequencing, pooling samples, and variant validation approaches.
- Considers the functional impact of variants on gene expression or protein function.
- Involves comparison of variant frequencies between cases and controls to statistically associate variants with risk.
- Variants are classified as rare, potentially disruptive (e.g., missense, splice-site, nonsense).
- The methods aim at diagnostics or risk assessment for individuals based on detected genetic variants.

#### Key Differences

- The patent focuses on detecting whether specific variant sequences exist in a subject's nucleic acid and associating these variants with autism risk or diagnosis primarily through observed variant presence and frequency comparisons.
- It does **not** describe or claim a Bayesian framework integrating **prior probabilities** of variant pathogenicity or gene-level variant occurrence probabilities derived from population allele frequencies.
- There is no mention of modeling false negatives (i.e., missing variants due to sequencing or technical limitations) or integrating observed and unobserved variant data into a **posterior probability of a genetic diagnosis**.
- Does not address quantification of diagnostic confidence or credible intervals around diagnosis.
- The approach is variant-centric and relies on presence/absence or frequency-based association, rather than quantifying the likelihood of complete genetic diagnoses probabilistically, or merging prior population genetics data into patient-specific inference.
- No explicit consideration of mode of inheritance or Hardy-Weinberg Equilibrium-based modeling of variant observation probabilities.
- The patent’s method is a diagnostic variant detection and association tool rather than a genome-wide variant probability platform quantifying **confidence** in a complete diagnosis.

#### Conclusion

Not blocking for Quant.

---

### Summary

This patent covers methods for identifying genetic variants associated with autism spectrum disorders by sequencing and variant analysis, focusing on variant presence/frequency and functional assessment of mutations. However, it lacks the key innovations of Quant, which integrate variant prior probabilities with observed sequencing data (including potential false negatives) in a Bayesian framework to estimate posterior probabilities of a complete genetic diagnosis and provide credible intervals of diagnostic certainty.

Therefore, despite overlap in gene and variant targets and sequencing technologies, the fundamental theory and implementation differ significantly from Quant’s unique method of integrating TP, FP, TN, FN outcomes into a probabilistic genome-wide disease likelihood model.
