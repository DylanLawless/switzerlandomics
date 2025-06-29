## Patent/Publication Analysis

### Reference #1

- **Title:** Sequencing small quantities of complex nucleic acids
- **Publication No.:** JP6297972B2
- **Publication Date:** [Not explicitly provided in text]
- **Link:** https://patents.google.com/patent/JP6297972B2/en

#### Abstract (excerpt)

> "The present invention inter alia analyzes sequence information obtained for sequencing small quantities of complex nucleic acids (as defined herein) and for reducing errors and performing haplotype fading. Methods and compositions are provided. As an example, a highly accurate whole genome sequence that is completely haplotype was produced even after the complex nucleic acid was started with genomic DNA from, for example, 5-20 human cells and amplified more than 1000-fold."

#### Relevant Overlaps

- The patent describes methods for sequencing very small amounts of complex nucleic acids, including from as few as 1-20 cells, using amplification (MDA), careful fragmentation, and barcoded tagging of aliquots.
- It employs Long Fragment Read (LFR) technology that physically separates long DNA fragments (~100 kb or more) into many aliquots, tags them, amplifies, sequences, and assembles with haplotype phasing.
- Uses Bayesian or fuzzy logic algorithms to resolve heterozygous SNPs into phased haplotypes, including error correction and false positive filtering.
- The invention explicitly aims to quantify phased haplotypes and produce credible diploid genome assemblies from limited DNA input with credible error rates and broad genome coverage.
- The patent mentions integration of prior genotype data (parents) for universal phasing to assign haplotypes to maternal or paternal origin.
- Discusses detailed error correction using multiplex aliquot tagging with Reed-Solomon error correction codes.
- Employs Bayesian models and graph optimization (minimum spanning tree) for haplotype assembly.
- Covers integration of both observed variant data and missing calls ("no calls") to improve confidence.
- Describes applications in clinical genetics including preimplantation genetic diagnosis, detection of disease-causing variants, rare disease diagnostics, cancer genomics, and methylation/haplotype-aware analyses.
- Explicitly estimates genome-wide variant probabilities, including false negative rates due to incomplete sequencing or missing variants.
- Provides credible intervals and Bayesian posterior probabilities for diagnosis.
- Uses population allele frequency data (gnomAD etc.) and integrates functional annotation tools (PolyPhen2, TFBS analysis).
- Differentiates itself by focusing on estimating the probability of a complete genetic diagnosis rather than just variant scoring.
- Describes computational and experimental workflows that align with Quant’s unique features: Bayesian integration of prior probabilities, modeling true positives, false negatives, and posterior probability of diagnosis.
- The patent includes multiple figures and detailed algorithmic pipelines on LFR haplotype assembly, error correction, and Bayesian genotype calling.

#### Key Differences

- The patent’s emphasis is on a particular experimental wet-lab method of preparing complex nucleic acid samples involving careful enzymatic treatments, aliquoting, MDA amplification, barcoding, and sequencing by DNA nanoball technology — aspects outside the core scope of Quant software.
- Quant's novelty lies primarily in the Bayesian integration of prior probabilities with patient variant calls to estimate posterior diagnosis probability, which is not specifically elaborated as part of the wet-lab sequencing method in the patent.
- The patent broadly covers haplotype phasing, variant calling, and error correction methods that are general to sequencing data but does not explicitly claim the Bayesian posterior probability calculation combining prior expectations and false negative modeling for genetic diagnosis confidence that defines Quant.
- While Bayesian models are mentioned in the patent for haplotype assembly, the patent does not appear to require or emphasize modeling of true positive, false positive, true negative, and false negative outcomes specifically for calculating comprehensive diagnosis probability credible intervals as Quant does.
- The patent focuses on sample preparation, sequencing, and data processing methods applicable to small DNA inputs, including single cells, with extensive LFR methodology, whereas Quant focuses on genomic variant probability modeling framework downstream of any sequencing data.

#### Conclusion

Potential overlap — recommend legal review.

The patent discloses methods and software pipelines that cover key technical aspects similar to the core of Quant, especially regarding LFR sequencing data processing, haplotype phasing, and Bayesian inference of variant calls with error correction. However, Quant’s unique innovation in calculating Bayesian posterior probabilities of a complete genetic diagnosis, integrating prior probabilities with observed and missing variant data including false negative modeling, appears more specific and novel and is not explicitly claimed or described in detail in this patent.
