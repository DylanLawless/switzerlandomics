## Patent/Publication Analysis

### Reference #1

- **Title:** Method for treating non-small lung cancer with a population of activated T cells
- **Publication No.:** US11957742B2
- **Publication Date:** 2023-03-07 (priority 2016-08-26)
- **Link:** https://patents.google.com/patent/US11957742B2/en

#### Abstract (excerpt)

> "The present invention relates to peptides, proteins, nucleic acids and cells for use in immunotherapeutic methods. In particular, the present invention relates to the immunotherapy of cancer... tumor-associated T-cell peptide epitopes, alone or in combination with other tumor-associated peptides... serve as active pharmaceutical ingredients of vaccine compositions that stimulate anti-tumor immune responses, or to stimulate T cells ex vivo and transfer into patients."

#### Relevant Overlaps

- Both claim immunotherapeutic uses of peptides presented by MHC (HLA) molecules on tumor cells, including non-small cell lung cancer (NSCLC) treatment.
- Use of activated T cells specific for peptide-HLA complexes (e.g., SEQ ID NO: 145/VYALKVRTI and HLA-A*24) for cancer cell killing.
- Immunotherapy approach targeting tumor-associated antigen peptides presented by MHC molecules.
- Use of adjuvants to enhance immune responses.

#### Key Differences

- The patent focuses on specific peptide sequences (e.g. VYALKVRTI, SEQ ID NO: 145) derived from tumor-associated antigens and adoptive transfer of activated T cells targeting these epitopes.
- The patent does not describe or claim:
  - Calculating genome-wide prior probabilities of observing pathogenic variants.
  - Integration of prior probabilities with observed/missing variant calls from patient genomes.
  - Bayesian posterior probability computation for confidence in genetic diagnosis.
  - Modeling false negatives (FN), true positives (TP), and related statistical diagnostic uncertainty metrics.
- The technology described in the patent is an immunotherapy method based on peptide epitopes for cancer treatment rather than a genome-wide Bayesian diagnostic probability framework.
- No use or mention of variant allele frequencies, Hardy-Weinberg equilibrium probabilities, or genomic variant scoring approaches as in Quant.
- No statistical framework integrating observed and missing data to produce credible intervals for diagnostic confidence.
- Does not address genetic diagnostic certainty or variant interpretation for hereditary genetic diseases.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
The patent claims the use of tumor-associated peptide epitopes (e.g., SEQ ID NO:145) presented by MHC molecules for activating T cells to treat cancers including NSCLC. This approach is immunotherapy focused on targeting peptides on tumor cells to kill them. Quant’s unique innovation lies in a Bayesian statistical method to quantify genetic variant pathogenicity confidence by integrating prior population-based variant probabilities with observed and missing patient variant data to derive diagnostic certainty and credible intervals. This patent does not disclose, claim, or suggest such Bayesian genome-wide diagnostic probability modeling, use of TP/FN statistics, or modeling diagnostic uncertainty. The field overlap is limited to general cancer immunotherapy using tumor antigen peptides, which is fundamentally different from Quant’s method for genetic diagnosis probability estimation. Therefore, this patent is not blocking for Quant.
