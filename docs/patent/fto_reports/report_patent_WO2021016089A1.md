## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for detecting hereditary cancers
- **Publication No.:** WO2021016089A1
- **Publication Date:** 2021-01-28
- **Link:** https://patents.google.com/patent/WO2021016089A1/en

#### Abstract (excerpt)

> "The disclosure relates to a genetic inheritance cancer predisposition panel utilizing targeted capture-based next-generation sequencing - the panel incorporates genes underlying well-characterized cancer syndromes and those associated with increased cancer risk. The disclosure further relates to methods of utilizing the genetic inheritance cancer predisposition panel for determining a cancer risk assessment for individuals with hereditary cancers and/or cancer syndromes."

#### Relevant Overlaps

- Utilizes next-generation sequencing (NGS) to detect mutations across multiple hereditary cancer-related genes.
- Employs a targeted bait-capture library of key cancer predisposition genes.
- Includes amplification of difficult-to-sequence gene regions (e.g., exons 11–15 of PMS2 and CHEK2) using long-range PCR to increase specificity.
- Detects single nucleotide variants (SNVs), small insertions and deletions (Indels), and copy number variants (CNVs) across a defined gene panel.
- Applies bioinformatics pipelines for variant calling, annotation, and classification based on established guidelines (e.g., ACMG).
- Reports on pathogenic, likely pathogenic, variants of uncertain significance (VUS), and benign variants.
- Demonstrates analytical validation with focus on sequencing accuracy, reproducibility, CNV detection sensitivity/specificity, and clinical performance.
- Clinical use for hereditary cancer risk assessment and identification of actionable variants.

#### Key Differences

- The method focuses on variant detection and classification to identify mutations associated with hereditary cancer syndromes.
- There is no disclosure regarding computation or integration of **prior probabilities** across the genome or genes.
- No Bayesian framework is described that incorporates observed true positives (TP) and false negatives (FN) to compute a posterior probability of a **complete genetic diagnosis**.
- The technology does not address quantifying confidence intervals or diagnostic certainty beyond variant pathogenicity classification.
- CNV detection relies on read-depth methods supplemented by array CGH confirmation, not probabilistic modeling with TP/FN considerations.
- The approach is limited to a fixed 34-gene panel, not a genome-wide assessment or aggregation of variant probabilities.
- No mention of modeling inheritance modes to influence prior or posterior probabilities.
- Does not integrate missing or unobserved variant data to estimate confidence in diagnosis.
- Uses standard NGS library prep, sequencing, alignment, variant calling, and classification workflows well-known in the art.
- Lacks innovative statistical or probabilistic modeling of variant observation probabilities under population genetics assumptions (e.g., Hardy-Weinberg Equilibrium).

#### Conclusion

Not blocking for Quant.

---

**Summary:** While WO2021016089A1 describes a robust hereditary cancer gene panel with sequencing methods, variant detection, and clinical interpretation, it lacks the core conceptual features of Quant. Quant's novelty lies in genome-wide prior probability calculations, Bayesian integration of observed and missing data reflecting inheritance modes, and explicit posterior probabilities quantifying diagnostic certainty. This patent is focused on multi-gene testing and variant classification without addressing probabilistic diagnosis confidence or modeling false negatives, and therefore does not present a blocking overlap with Quant.
