## Patent/Publication Analysis

### Reference #1

- **Title:** Whole Genome Sequencing Method for Picogram Quantities of DNA
- **Publication No.:** JP2023505363A
- **Publication Date:** 2023-03-02
- **Link:** https://patents.google.com/patent/JP2023505363A/en

#### Abstract (excerpt)

> "The present invention relates to a method for whole genome sequencing of a single cell or group of cells for identifying single nucleotide variants, identifying structural chromosomal alterations, or identifying phasing information in the genome of a single cell or group of cells... Advantageously, the present invention provides an index for obtaining high-quality, data-rich sequencing results from picogram amounts of DNA obtained from clinical samples by means of the single DNA molecule sequencing approach herein."

#### Relevant Overlaps

- The patent describes a whole genome sequencing (WGS) approach for single cells or small cell groups involving distribution of genomic DNA into multiple wells, whole genome amplification (WGA), adapter ligation with unique indexing per well (row and column indices), and subsequent sequencing.
- It specifically addresses identification of single nucleotide variants (SNVs), structural chromosomal changes, and phasing information in single or grouped cells.
- The method partitions single-stranded genomic DNA molecules into distinct reaction wells to enable discrimination of true variants from amplification-induced artifact mutations.
- The patent further applies Bayesian/artificial neural network (ANN) models to analyze variant calls and remove false positives, enhancing sensitivity for true positive somatic variants.
- The use of two-dimensional indices (row and column) and paired indices at both fragment ends to reduce index cross-contamination parallels the described Quant innovation on indexing redundancy to remove contamination.
- The data inputs, processing steps (partitioning, WGA, indexing, PCR amplification, sequencing, variant calling, filtering, ANN-based classification), and outputs (high-confidence variant calls, credible interval quantification) strongly mirror the technical concept of integrating observed and unobserved variant data to improve variant diagnosis certainty.

#### Key Differences

- The patent focuses on single-cell or small-cell group sequencing primarily for mutation discovery and phasing, with substantial emphasis on laboratory methods for library construction, fragment indexing, and error filtering.
- While Bayesian and ANN models for false positive removal are mentioned, the patent does not elaborate or claim the specific innovation of genome-wide prior probability integration under Hardy-Weinberg equilibrium used by Quant.
- Quant uniquely claims integration of prior variant pathogenicity probabilities with observed/missing data to derive posterior diagnostic certainty including false negative modeling, which is not clearly described or claimed here.
- The patent’s indexing and sequencing improvements serve mainly to produce higher quality sequencing data and remove artifacts but do not explicitly quantify confidence of a complete genetic diagnosis or provide credible intervals for diagnosis as in Quant.
- Public databases like gnomAD, ClinVar, and complex disease gene models used in Quant are not emphasized or claimed in this patent.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
This patent discloses a sequencing method with many technical elements very similar to Quant’s approach: partitioning single DNA molecules into wells; indexing with redundant row and column indices; use of WGA; filtering false positives by ANN models; generating high-confidence variant calls from limited picogram DNA inputs. These core aspects resonate strongly with Quant’s innovation in integrating observed variant calls and probabilistic models for diagnostic certainty. However, the patent lacks explicit treatment or claims of Quant’s unique Bayesian integration of prior variant observation probabilities and false negative modeling for complete diagnostic confidence.

---
