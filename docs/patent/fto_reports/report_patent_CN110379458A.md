## Patent/Publication Analysis

### Reference #1

- **Title:** Pathogenicity variation site determination method, device, computer equipment and storage medium
- **Publication No.:** CN110379458A
- **Publication Date:** 2019-06-25
- **Link:** https://patents.google.com/patent/CN110379458A/en

#### Abstract (excerpt)

> "The invention is applicable to the field of biotechnology, and provides a pathogenic variation site determination method, device, computer equipment and storage medium. The method includes: performing genetic variation annotation on the mutation sites in the to-be-annotated matrix; converting variant feature values to pathogenicity evidence; interpreting pathogenicity evidence to obtain variant pathogenicity interpretation results per sample; user modification of variant pathogenicity evidence for variants inconsistent with preset transformation rules; updating the evidence database and iterating until no new evidence is added. This method achieves high precision and recall for interpreting pathogenic variant sites."

#### Relevant Overlaps

- Uses genetic variant annotation methods including annotation of variant position, type, and population frequency (e.g., from gnomAD).
- Converts variant annotations to pathogenicity evidence based on preset transformation rules referencing ACMG guidelines.
- Generates variant-level pathogenicity interpretations (e.g., pathogenic, likely pathogenic, benign, uncertain).
- Incorporates a user-in-the-loop step where experts can manually modify variant pathogenicity evidence for variants inconsistent with preset rules.
- Iteratively updates and expands the pathogenicity evidence database to improve recall and reduce uncertain interpretations.
- Uses standard variant data inputs: sequencing data aligned to reference genomes, variant calling (VCF format), variant annotation, and public clinical databases (ClinVar, HGMD).

#### Key Differences

- Does **not** explicitly model or quantify genome-wide **prior probabilities** of pathogenic variants under Hardy-Weinberg Equilibrium or different inheritance modes.
- Does **not** integrate observed variant calls with potential false negatives or unsequenced regions to compute a **Bayesian posterior probability** of a complete genetic diagnosis.
- Lacks explicit consideration or modeling of True Positives (TP), False Negatives (FN), False Positives (FP), and True Negatives (TN) in a probabilistic framework.
- Focus is on improving **variant-level** pathogenicity interpretation by evidence accumulation and manual curation rather than quantifying diagnostic certainty at the gene or genome-wide level.
- No mention of generating credible intervals or confidence ranges quantifying uncertainty in diagnosis.
- The iterative manual correction is targeted at expanding evidence rules to capture more pathogenic variants, but does not address probabilistic integration of unobserved data for diagnosis confidence.

#### Conclusion

Not blocking for Quant.

---

### Summary

The patent CN110379458A presents a method and system focused on variant-level pathogenicity interpretation, improving recall and precision by iterative rule expansion and expert curation of variant pathogenicity evidence following ACMG guidelines. Although it processes variant annotation and classification, it does not approach the problem by calculating genome-level prior probabilities or Bayesian posterior probabilities integrating missing variants and inheritance models as Quant uniquely does. The patent lacks the core theoretical and methodological overlap with Quant's comprehensive probabilistic disease-causing variant observation modeling and diagnostic confidence quantification.

Thus, it does not block Quant’s novel method of integrating prior probabilities with patient data including false negative assessment to produce actionable diagnostic credibility scores.
