## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and computer systems for analyzing genomic DNA of organisms  
- **Publication No.:** CN107368705B  
- **Publication Date:** 2018-03-02  
- **Link:** [https://patents.google.com/patent/CN107368705B/en](https://patents.google.com/patent/CN107368705B/en)

#### Abstract (excerpt)

> "The present invention relates to logic for analyzing nucleic acid sequence data that employs algorithms that result in substantial improvements in sequence accuracy and that can be used, for example, in conjunction with the use of long fragment reads (LFR) methods to phase sequence variation."

#### Relevant Overlaps

- The patent describes a method of sequencing complex nucleic acids via Long Fragment Read (LFR) technology, which involves aliquoting long DNA fragments into multiple wells, amplifying, fragmenting, and tagging fragments with well-specific barcodes.
- It phases heterozygous loci by constructing graphs of SNP pairs linked by shared aliquot information, uses fuzzy inference systems to score linkage hypotheses, and applies minimum spanning tree algorithms to optimize haplotype assembly.
- The invention also utilizes probabilistic clustering of haplotypes through analysis of multidimensional genotype matrices reflecting allele combinations across reads/aliquots.
- The method addresses error correction and reduction by consensus among aliquots and phased haplotypes, and enhances detection of structural variants such as short tandem repeat expansions.
- It specifically incorporates identifying true base calls by requiring presence in multiple aliquots (e.g., ≥2 or ≥3), echoes explicit modeling of false positives and negatives.
- Analysis extends to sequencing from low amounts of DNA (single cells or ~10 cells), with controlled amplification (MDA and CoRE fragmentation) to achieve high coverage and low error.
- Uses Bayesian or fuzzy logic methods for inference of phasing and error detection, considering multi-outcome matrices and probabilistic weighting.
- Addresses haplotype phasing via parental genotype assistance and population genotype data.
- The invention includes algorithms and computer systems that process reads tagged with error-correcting barcodes (e.g., Reed-Solomon codes), allowing correction, classification of reads, and improving assembly.
- Describes quantifying coverage and read response rates (call rates), to achieve assembled sequences with low false single nucleotide variants (e.g., <1 per megabase) at high genomic response rates (>70%).
- Emphasizes using Bayesian-like clustering in N-dimensional space of heterozygous loci allelic states to identify noiseless haplotype centers—resembling the clustering described for correcting sequencing noise.
- The method differentiates itself from standard variant scoring by providing phased haplotypes at chromosome-scale contigs, error reduction based on aliquot information, and handling of false negatives in sequencing.
- The claims encompass detailed computational steps for phasing using matrix-based linkage scoring and fuzzy inference, generation of contigs via minimum spanning tree, assignment of parent haplotypes through parental genotype data, and identification of base authenticity by presence in multiple aliquots.
  
#### Key Differences

- The patent primarily discloses methods for sequencing and assembling phased diploid genome sequences using long fragment reads and aliquot-based barcoded sequencing.
- It focuses on achieving haplotype phasing and base error correction by leveraging physical separation of DNA fragments into aliquots and their unique barcodes to generate phased assemblies.
- While it uses probabilistic and fuzzy logic approaches in phasing, it does not explicitly describe integrating prior probabilities of disease-causing variants across the genome nor computing Bayesian posterior probabilities quantifying confidence in complete genetic diagnosis.
- There is no mention of explicitly modeling false negatives or false positives in integrated Bayesian diagnostic frameworks combining population allele frequencies, inheritance modes, or gene-level prior probabilities as Quant does.
- The invention is directed at improving genome assembly, haplotype phasing, error correction in sequencing data, and identification of genomic variations, but not toward quantifying posterior probabilities of observing pathogenic variants conditional on observed/missing patient data.
- The methods focus on sequencing and phasing accuracy, while Quant’s core innovation lies in genome-wide prior-probability modeling combined with patient variant observation to estimate diagnostic certainty with credible intervals.
- The patent does not describe using TP, FP, TN, FN outcomes to derive a posterior probability of a genetic diagnosis as a key feature; rather, it emphasizes error reduction and haplotype assembly quality.
- The patent covers sequencing technology, sample preparation, probabilistic assembly and phasing; Quant’s novelty lies beyond these steps, in the statistical interpretation of observed and unobserved variant data to assign probabilities of disease causation.

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
Although this patent describes Long Fragment Read sequencing and associated phasing algorithms that handle SNP linkage, error correction using aliquot barcodes, and haplotype assembly, it does not disclose or claim the specific Bayesian integration of prior genome-wide pathogenic variant probabilities with observed and unobserved patient variant data to compute a posterior probability of a complete diagnostic genetic finding as Quant does. The patent focuses on sequencing accuracy, phasing with fuzzy logic and MST graph algorithms, and barcode-based error correction, which are complementary but operate at a different conceptual and functional layer than Quant’s diagnostic certainty modeling. Therefore, while similar in sequencing and phasing methodology, the patent does not block Quant’s novel method of quantifying confidence of genetic diagnosis through prior/posterior Bayesian modeling of variant observability and false negatives.
