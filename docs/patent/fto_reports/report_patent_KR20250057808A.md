## Patent/Publication Analysis

### Reference #1

- **Title:** How to assess the clinical relevance of genetic mutations  
- **Publication No.:** KR20250057808A  
- **Publication Date:** 2025-02-14 (approximate, based on publication number and priority dates)  
- **Link:** https://patents.google.com/patent/KR20250057808A/en

#### Abstract (excerpt)

> "Disclosed herein are systems and methods for screening a library of variants for activity. Also disclosed herein are high-throughput methods for identifying candidate variants that exhibit gain of biologically active function in an assay."

#### Relevant Overlaps

- The patent describes a high-throughput method for screening ERBB2 (HER2) polypeptide variants by saturating mutagenesis, expressing these variants in mammalian cells, and measuring phosphorylation levels as a marker of biological activity.
- A barcode-labeled plasmid library encodes single amino acid substitutions throughout residues 679-992 of ERBB2.
- The method identifies gain-of-function variants associated with cancer by flow cytometry and antibody-based immunoassays targeting phosphorylated ERBB2.
- Deep sequencing (next-generation sequencing) is used to track variant barcodes to identify which mutants show increased phosphorylation.
- Statistical methods are applied to analyze variant activity compared to wild type, including p-values and confidence estimation.
- The invention includes generating a database of cancer-associated ERBB2 variants identified by this approach.

#### Key Differences

- The patent focuses on experimental wet-lab screening of variant libraries to determine functional consequences (phosphorylation activity) of specific protein mutations, particularly ERBB2 variants related to cancer.
- It is a molecular biology and functional assay technology, designed to empirically measure variant activity at the protein level using cell-based assays, antibodies, and flow cytometry.
- Quant’s core innovation is computational Bayesian modeling integrating prior population genetic variant frequencies, inheritance modes, and patient variant call data to compute the *probability* and *confidence* of a *genetic diagnosis* genome-wide, quantifying false negatives and using credible intervals.
- The patent does not describe or claim any Bayesian integration of prior variant observation probabilities with patient-observed variants or modeling of false negatives in diagnostic confidence estimation.
- No explicit confusion matrix elements (TP, FN, FP, TN) or probabilistic diagnostic certainty estimation appear in the patent.
- Public databases such as gnomAD or ClinVar are not integrated with prior probability modeling; instead, the patent relies on functional assays of specific variants.
- The patent’s focus is on generating variant functional effect profiles via cellular phosphorylation measurement, not on genome-wide probabilistic diagnosis.
- The methods are limited to ERBB2 and cancer-linked variants, whereas Quant is designed genome-wide for many genes and modes of inheritance.
- Outputs are variant activity classifications (GOF, LOF, WT) and associated data, not Bayesian posterior probabilities of carrying disease-causing variants.
- No description of Hardy-Weinberg Equilibrium calculations or family inheritance mode integrations.
- The patent involves laboratory techniques and flow cytometric cell sorting rather than computational posterior probability computation.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
This patent covers a wet-lab screening approach to functionally characterize ERBB2 variants by protein phosphorylation assays and barcoded plasmid libraries. It does not disclose or claim the Bayesian probabilistic framework that Quant uses to integrate prior variant probabilities with observed or missing variant data (TP/FN modeling) to compute genetic diagnosis confidence genome-wide. The approaches and technical solutions are fundamentally different: empirical functional variant activity screening vs. computational Bayesian diagnostic probability estimation. No highly similar use of TP, FN, or Bayesian posterior probability for diagnosis is disclosed.

---

# Summary

The provided patent relates to high-throughput functional assays for ERBB2 cancer variants focusing on their biochemical activity in cells and statistical variant classification based on phosphorylation levels detected by immunoassays and sequencing of barcoded libraries. It does not describe or utilize Bayesian integration of prior variant probabilities with patient variant calls to calculate posterior probabilities of a genetic diagnosis or quantify false negative rates genome-wide.

Therefore, the Quant technology’s unique Bayesian probabilistic diagnostic confidence framework is not anticipated or blocked by this patent.
