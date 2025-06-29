## Patent/Publication Analysis

### Reference #1

- **Title:** DNA Diagnostics based on mass spectrometry  
- **Publication No.:** EP1164203B1  
- **Publication Date:** 2006-08-02  
- **Link:** https://patents.google.com/patent/EP1164203B1/en

#### Abstract (excerpt)

> "Fast and highly accurate mass spectrometry-based processes for detecting a particular nucleic acid sequence in a biological sample are provided. [...] Methods for ordering fragments of DNA are provided. [...] Hybridization events and the actual molecular weights of the fragments as determined by mass spectrometry provide sequence information (e.g., the presence and/or identity of a mutation)."

#### Relevant Overlaps

- Use of mass spectrometry (MALDI-TOF, ESI) to detect nucleic acid fragments and mutations.
- Generation of base-specifically terminated nucleic acid fragments (via endonucleases or enzymatic reactions) for sequencing and mutation detection by mass.
- Immobilization of nucleic acids on solid supports via cleavable linkers (photocleavable, acid-labile, enzymatically cleavable).
- Multiplexed detection using mass-modified oligonucleotides for simultaneous identification of multiple mutations or loci.
- Use of hybridization to capture target nucleic acids on supports before mass spectrometry.
- Processing steps for sequencing and mutation detection include generating fragment ladders, purification, and MALDI-TOF detection.

#### Key Differences

- This patent focuses on **detecting and sequencing DNA or RNA** through mass spectrometry of nucleic acid fragments, and the hybridization and capture of these fragments on surfaces with cleavable linkers.
- The invention centres on **variant detection and sequencing via fragment mass determination** rather than probabilistic modelling of variant presence.
- There is **no disclosure of Bayesian integration** of prior probabilities of variant pathogenicity with patient observed and missing variant data.
- No mention or use of **true positive (TP), false negative (FN), or false positive (FP) counts to compute confidence or credible intervals** of a genetic diagnosis.
- The patent does not address **genome-wide variant prior probability estimation, integration across all genes and inheritance modes**, or posterior probability of complete genetic diagnosis.
- The mass spectrometry approaches here analyze fragments and sequences **at the molecular level**, not a probabilistic framework estimating diagnostic confidence.
- The data inputs and outputs focus on **sequence identification or detection of mutations** by molecular mass, rather than whole-exome/genome variant probability aggregation.
- This patent's claims primarily relate to **methods for sequencing by mass spectrometry and fragment ordering**, and chemical/physical linkers for immobilization.

#### Conclusion

Not blocking for Quant.

---

### Summary

Although this patent extensively discloses the use of mass spectrometry (MALDI-TOF and related techniques) for nucleic acid fragment detection, mutation detection, and sequencing by fragment mass determination, it does **not** overlap with Quant’s core novel method, which is:

- The calculation of **genome-wide prior probabilities of pathogenic variants per gene** under Hardy-Weinberg Equilibrium;
- The integrative use of both **observed true positives and unobserved false negatives with Bayesian models** to compute a posterior probability of a **patient having a genetic diagnosis**;
- Providing **credible intervals reflecting diagnostic uncertainty**, at the gene and genome-wide levels;
- Accounting for all outcomes: TP, FP, TN, FN, in a diagnostic probabilistic framework;
- Scalability to all genes across inheritance modes, not fragment-by-fragment base-call level detection.

While some **mass spectrometry methods and fragment ordering approaches could be used as part of variant calling pipelines**, this patent does not teach or suggest the **quantification of diagnostic probabilities integrating prior and observed data, as in Quant**. It also lacks the use of TP/FN/FP theory or Bayesian disease diagnosis confidence.

Therefore, there is no material technological overlap that would block Quant’s freedom to operate.

# End of Report
