## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for cancer therapy monitoring
- **Publication No.:** WO2023225175A1
- **Publication Date:** 2023-11-02
- **Link:** https://patents.google.com/patent/WO2023225175A1/en

#### Abstract (excerpt)

> "In an aspect, the present disclosure provides a method comprising (a) obtaining or deriving a biological sample from a subject, wherein said subject has cancer, has previously had cancer, or is suspected of having cancer; (b) assaying cell-free deoxyribonucleic acid (cfDNA) molecules obtained or derived from said biological sample, wherein said assaying comprises sequencing at least a portion of said cfDNA molecules or derivatives thereof to produce a set of sequencing reads, wherein said sequencing comprises at least one of whole-exome sequencing (WES) and whole-genome sequencing (WGS); and (c) determining at least one of a tumor mutational burden and a copy number burden of said subject, based at least in part on processing said set of sequencing reads."

#### Relevant Overlaps

- Uses sequencing data (WES/WGS) to analyze cfDNA obtained from subjects with cancer.
- Computes tumor mutational burden (TMB) and copy number burden (CNB) from sequencing reads.
- Employs machine learning algorithms trained on large sample sets to predict presence/absence of cancer, relapse, treatment resistance.
- Incorporates quantitative measures of genomic loci and mutation types (CNVs, SNVs, indels).
- Utilizes error correction and consensus sequencing to improve accuracy.
- Monitoring over time to detect progression or treatment efficacy using biomarker dynamics.
- Integrates clinical health data with sequencing data for refined predictions.
- Implements computer systems configured for these analyses, including data processing and reporting.
- Specifies use of credible accuracy, sensitivity, specificity metrics and clinical intervention selection based on molecular measures.

#### Key Differences

- The patent is focused on cancer detection, prognosis, and therapy monitoring via cfDNA genomic alterations.
- It centers on *measuring* tumor mutational burden and copy number burden as biomarkers reflecting tumor presence or progression.
- No explicit integration of prior probabilities of variant pathogenicity or genome-wide disease-causing variant rates.
- Does not model or compute a Bayesian posterior probability integrating prior probabilities with observed and unobserved (false negative) data to quantify confidence in a complete genetic diagnosis.
- The patent focuses on diagnostic classification or biomarkers correlated to cancer status rather than quantifying the *confidence* of a genetic diagnosis accounting for TP, FP, FN, TN outcomes.
- While machine learning is used, it predicts cancer presence, relapse, or resistance but no indication of Bayesian integration of prior variant probabilities per gene or inheritance mode.
- Quant's novelty lies in population genetics principles (Hardy-Weinberg equilibrium) and integrating unobserved variant data; not present here.
- The patent’s approach applies broadly to cancers and mutational load; Quant emphasizes rare genetic disease diagnosis and genome-wide prior probabilities.
- Use of TP/FN terminology here is limited to statistical performance metrics; not as a core model integrating true positive and false negative probabilities in genetic diagnosis.
- Does not provide credible intervals reflecting diagnostic certainty in a Bayesian framework.

#### Conclusion

Not blocking for Quant.

---

**Summary:** This patent describes methods and systems for assessing tumor mutational and copy number burdens from cfDNA to detect or monitor cancer and treatment response. Although it uses sequencing data and machine learning with clinical correlations of biomarker levels, it does not embody or disclose the core innovation of Quant, namely the Bayesian integration of prior genome-wide pathogenic variant probabilities with observed/missing variant data to compute a posterior probability of a fully genetically explained diagnosis including explicit modeling of false negatives and disease inheritance modes. The references to positive/negative predictive values are measures of diagnostic test performance rather than components of a Bayesian diagnostic confidence model. Therefore, this patent does not block the Quant method.
