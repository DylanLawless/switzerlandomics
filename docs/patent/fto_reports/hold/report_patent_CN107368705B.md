## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and computer systems for analyzing genomic DNA of organisms
- **Publication No.:** CN107368705B
- **Publication Date:** Not explicitly stated; family priority dates from 2011-2012
- **Link:** https://patents.google.com/patent/CN107368705B/en

#### Abstract (excerpt)

> "The present invention relates to logic for analyzing nucleic acid sequence data that employs algorithms that result in substantial improvements in sequence accuracy and that can be used, for example, in conjunction with the use of long fragment reads (LFR) methods to phase sequence variation."

#### Relevant Overlaps

- Uses **Long Fragment Reads (LFR)** technology to phase genomic variants by physically partitioning long genomic DNA fragments into multiple aliquots, each containing less than a haploid genome equivalent.
- Assigns **aliquot-specific tags** (barcodes) to sequence reads to identify their origin.
- Phases heterozygous loci into two haplotypes by analyzing co-occurrence of alleles within the same aliquots.
- Employs graph-based models, minimum spanning tree optimization, and fuzzy inference systems for error correction and haplotype assembly.
- Reduces false positives and improves sequence accuracy via multi-aliquot consensus and phasing.
- Addresses sequencing from very small amounts of input DNA (down to 1-20 cells or ~1-10 ng DNA).
- Explicitly integrates haplotype phasing with sequencing reads using Bayesian/statistical clustering approaches in multidimensional allele space.
- Corrects for errors by leveraging overlaps of aliquots and barcode error correction schemes (e.g. Reed-Solomon codes).
- Counts and uses false positives/negatives indirectly through error correction and confidence in phasing.
- Detects and analyzes complex variants including structural variants and repeat expansions.
- Focus on **phased assembly of whole genomes** with high accuracy and coverage, from small input quantities.

#### Key Differences

- **Does not disclose** or focus on the unique Bayesian integration of **prior probabilities** of pathogenic variant observation across genes and inheritance modes with observed/missing patient variant data to compute **posterior probabilities or credible intervals** of genetic diagnosis certainty.
- Emphasizes improved **sequencing accuracy** and **haplotype phasing** using LFR and barcoding rather than integration of clinical prior information or assessment of false negatives at the patient diagnostic level.
- The Bayesian variant dosage or full posterior modeling of genetic diagnosis incorporating false negative rates, penetrance, inheritance mode modeling, or genome-wide prior risk estimations is **not described**.
- The invention focuses primarily on methods and computer logic to generate accurate phased sequences and haplotypes from sequencing data, less on probabilistic diagnosis scoring frameworks like Quant.
- Does not address the **integration of variant pathogenicity scores or clinical variant databases** into a statistical framework that quantifies diagnostic certainty and credible intervals.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
The patent extensively covers key technical concepts of barcoded aliquots, LFR sequencing, assembly, and haplotype phasing with error correction and clustering algorithms that are fundamental to generating phased genome-wide variant data. These overlap with aspects of Quant’s data inputs and sequencing strategies.

However, the Quant invention’s innovation lies specifically in the Bayesian modeling and integration of **prior probabilities** of pathogenic variants, handling false negative variants explicitly, and computing **posterior probabilities with credible intervals of diagnostic confidence**. This patent does not teach or disclose this critical step of integrating prior clinical/genomic knowledge with observed/missing variant data to quantify diagnostic certainty.

Hence, this patent involves important foundational sequencing and phasing methods but does not appear to block Quant’s unique approach of genome-wide probabilistic diagnosis quantification, suggesting a potential but not definitive blocking overlap that merits further legal analysis.
