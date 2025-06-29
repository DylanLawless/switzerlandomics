## Patent/Publication Analysis

### Reference #1

- **Title:** Sequencing small quantities of complex nucleic acids
- **Publication No.:** JP6297972B2
- **Publication Date:** Not explicitly stated (priority dates from 2011)
- **Link:** https://patents.google.com/patent/JP6297972B2/en

#### Abstract (excerpt)

> NA (No available abstract). The patent describes methods and compositions for sequencing small quantities of complex nucleic acids, such as genomic DNA from very few cells, with improved accuracy, error reduction, and haplotype phasing. It includes techniques for amplification (MDA), controlled random enzymatic fragmentation (CoRE), aliquoting, barcoding/tagging, library construction, sequencing, and data analysis including haplotype assembly and error correction.

#### Relevant Overlaps

- Use of aliquoting complex nucleic acid samples into multiple aliquots each containing a fraction of the haploid genome.
- Tagging DNA fragments in each aliquot with unique molecular barcodes (including error correction codes).
- Performing MDA for whole genome amplification from low nanogram to picogram quantities (1-20 cells).
- Use of controlled enzymatic fragmentation (CoRE) to generate uniform fragment sizes with minimal bias.
- Generation of sequencing libraries from barcoded fragments pooled for sequencing.
- Haplotype phasing by constructing graphs representing heterozygous SNPs, assigning edges based on shared barcode analyses, applying minimum spanning tree algorithms, and using parental/trio genotype data for universal phasing.
- Explicit integration of multiple reads from different aliquots sharing barcodes to improve base accuracy and error correction.
- Importance of distinguishing maternal and paternal haplotype sequences and their accurate assembly.
- Analysis of allele-specific expression and transcription factor binding site variants based on phased haplotypes.
- Identification and correction of false positives and false negatives in variant calls by leveraging barcode-linked read data.
- Use of Bayesian or probabilistic models for read correction and base calling.
- Application to extremely low input DNA samples for clinical genetic diagnostics including preimplantation genetic diagnosis, cancer genomics, and rare variant detection.
- Discussion of downstream methods for variant interpretation beyond simple pathogenicity calls, including full haplotype confidence assessment.
- Tagged multiplexing strategies with error-correcting barcodes for accurate sample origin identification.
- Methods to rescue "no call" bases by leveraging barcoded multiplex information across aliquots.

#### Key Differences

- The patent focuses extensively on experimental methods to prepare sequencing libraries from extremely limited input amounts (down to single cells), including amplification, barcoding, fragmentation, and error correction—these are mostly molecular and biochemical protocols.
- While the patent mentions Bayesian models and error correction, the focus is more on generating high fidelity sequence data, error minimization in sequencing reads, and creating long-range haplotype phasing via physical separation and barcoding.
- The patent’s phasing approach is strongly dependent on physical fractionation of DNA into aliquots and barcoding, followed by graph-based analysis; however, it does not explicitly detail calculation of genome-wide prior probabilities of observing pathogenic variants using population allele frequencies or Bayesian integration of false negative (FN) and true positive (TP) variant detection probabilities to assess the confidence of a **complete genetic diagnosis**.
- No explicit mention of integrating prior probabilities from large-scale population databases (e.g., gnomAD) or clinical variant databases (e.g., ClinVar) for prior-to-patient-data Bayesian modeling as is evident in Quant.
- The patent’s use of Bayesian or probabilistic methods appears limited to base calling and quality scoring error correction and does not extend to disease variant likelihood or diagnostic confidence quantification.
- No mention of providing credible intervals or uncertainty bounds on likelihood of complete genetic diagnosis.
- The patent emphasizes sequencing, fragment tagging, haplotype phasing, and reduction of sequencing artefacts rather than the specific clinical probability modeling and posterior calculations of pathogenic variant presence notable in Quant.

#### Conclusion

**Not blocking for Quant.**

The analyzed patent relates to molecular/genomic methods for accurate high-throughput sequencing from low input samples including barcoding and haplotype phasing. However, it lacks technical teaching or claims related to Quant’s core innovation of integrating genome-wide prior pathogenic variant occurrence probabilities with patient-observed variant data and explicit modeling of TP, FP, TN, and FN to generate a Bayesian posterior probability of a complete genetic diagnosis with credible intervals. The use of barcoding and Bayesian models in the patent is limited to fragment assignment and base calling quality improvements rather than variant pathogenicity or diagnosis confidence modeling. Therefore, despite some superficial similarity in use of Bayesian/statistical approaches and haplotype phasing, the patent does not block Quant’s unique approach and purpose.
