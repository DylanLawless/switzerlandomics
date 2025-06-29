## Patent/Publication Analysis

### Reference #1

- **Title:** Ultra high-fidelity single molecule sequencing  
- **Publication No.:** US20240271202A1  
- **Publication Date:** 2024-02-29  
- **Link:** https://patents.google.com/patent/US20240271202A1/en

#### Abstract (excerpt)

> "Provided are compositions and methods for improved accuracy during DNA sequencing. The method can be performed without amplification prior to sequencing. The compositions and methods are used for determining single and double stranded sequences, and for accurately determining mosaic double strand mutations and single strand nucleotide changes."

#### Relevant Overlaps

- The patent describes a method for sequencing double stranded DNA from a plurality of nucleated cells without amplification prior to sequencing, which parallels Quant's input DNA methodology.
- It performs fragmentation of DNA, repair of nicks by ligase, blocking of residual nicks by exonuclease-deficient polymerase plus dideoxynucleotides (with optional A-tailing) before circularizing DNA fragments with hairpin adapters. This preparation and sequencing strategy is similar to Quant’s use of fragmented DNA and library preparation to achieve high-fidelity reads.
- Sequencing is performed with multiple passes per molecule, generating strand-specific consensus sequences to detect both single-stranded nucleotide changes and double-stranded mutations within individual DNA molecules.
- The patent also emphasizes ultra-high sequencing fidelity (error rates as low as 10^-9), improving detection of rare mosaic mutations and single-strand DNA damage, which conceptually aligns with Quant’s need for very high-accuracy data on observed and hidden variant states.
- The methods distinguish between single-strand nucleotide mismatches/damage and true double-strand mutations, paralleling Quant’s modelling of true positives (TP) and false negatives (FN) across both DNA strands.
- The computational and experimental framework significantly increases the number of passes per molecule to improve accuracy, which can impact the estimation of diagnostic confidence, although Quant’s unique Bayesian integration of prior and observed data is not detailed here.

#### Key Differences

- This patent focuses primarily on the biochemical, library preparation, sequencing methods, and computational processing to generate ultra-high fidelity reads capable of detecting both single- and double-strand DNA variants and damage with unprecedented accuracy.
- Quant’s core novelty is the **Bayesian statistical framework** that integrates prior probabilities of pathogenic variant presence with patient-specific observed and unobserved variant data, explicitly modelling true positives, false negatives, and diagnostic confidence intervals genome-wide.
- The patent’s disclosed method is foundational and orthogonal: it provides higher accuracy raw and consensus sequencing data. It does not disclose a system or method for combining these data with prior probabilities across all genes and inheritance modes to produce a posterior probability of a complete genetic diagnosis as Quant does.
- Although the patent mentions detection of single- and double-stranded DNA variants, it does not describe quantitative modelling of variant pathogenicity probabilities using population allele frequencies, ClinVar data, panel-based inheritance mode, or credible intervals of diagnostic confidence.
- No explicit use or description of Bayesian integration of priors and sensitivity to false negative calls in the context of genetic diagnosis confidence is described.
- The patent addresses biochemical methodology and signal processing but does not address statistical frameworks for clinical diagnosis risk estimation from variant data typical of Quant’s innovation.
- Many described sequencing data filtering and artifact removal steps concern base calling and molecule quality, but do not integrate these into a system that estimates posterior probabilities of genetic diagnosis using evidence from population and clinical datasets.

#### Conclusion

**Not blocking for Quant.**

*Rationale:*  
While US20240271202A1 comprehensively covers ultra-high fidelity library preparation, sequencing, and data processing methods that enable detection of single- and double-stranded DNA variants with very low error rates, it does not describe or claim the core Bayesian framework that Quant innovates—namely, integration of prior disease variant probabilities derived from population and clinical data with patient-specific observed/missing variant data to quantify diagnostic confidence as posterior probabilities. The patent’s methods provide a technical foundation for data generation but do not overlap with Quant’s unique theory and approach to interpreting variant data in a diagnostic context, nor with its use of TP, FP, TN, FN modelling.

---

# Summary

This patent focuses on ultra-high fidelity sequencing technology including library preparation, amplification-free sequencing, and computational processing for rare mutation detection, but does not cover Quant’s genome-wide Bayesian prior integration with observed/missing variant data to estimate diagnosis certainty. The idea of using TP and FN in a Bayesian model to quantify the probability of a complete diagnosis with credible intervals is novel and not addressed here. Therefore, there is no technical blocking overlap for Quant from this patent.
