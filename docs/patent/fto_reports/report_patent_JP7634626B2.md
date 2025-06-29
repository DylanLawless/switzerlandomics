## Patent/Publication Analysis

### Reference #1

- **Title:** Method for detecting genetic variations in highly homologous sequences by independent alignment and pairing of sequence reads - Patents.com
- **Publication No.:** JP7634626B2
- **Publication Date:** 2020-05-25 (priority from 2018)
- **Link:** https://patents.google.com/patent/JP7634626B2/en

#### Abstract (excerpt)

> [0002] "The following disclosure relates generally to determining genetic variation, and more particularly to determining genetic variation in highly homologous regions of interest in a genome, e.g., in genomic regions that include genes and pseudogenes."

> [0009], [0011], [0012], [0014]: Method for detecting genetic variations in a genome comprising highly homologous first and second regions by paired-end sequencing, separately aligning first and second reads to a reference genome, identifying reads aligned to the first region, pairing reads to generate top paired alignments, and detecting genetic variations in these alignments. The method uses Burrows-Wheeler Aligner (BWA), with specific pairing criteria based on alignment scores and template length.

#### Relevant Overlaps

- The patent discloses methods directed to detection of genetic variations in highly homologous genomic regions (genes and pseudogenes), by sequencing paired-end reads and separately aligning each read to a reference genome.
- It involves generating multiple possible alignments per read and selecting top alignments, then pairing the reads to form "top pair alignments" used for variant detection.
- It explicitly addresses the problem of ambiguous alignment in highly homologous regions, e.g., PMS2/PMS2CL.
- The methods include detecting SNVs, indels, inversions, and CNVs, and use BWA and HMM callers for copy number variant detection.
- The patent discusses addressing ambiguous sequence regions, special mapping strategies to distinguish gene and pseudogene-derived sequences, and reflex workflows for variant disambiguation via LR-PCR and MLPA following initial NGS.
- Variant calling uses allele dosage up to tetraploid to model combined gene/pseudogene signals.
- Also includes simulation of CNVs, testing performance sensitivity and specificity akin to the example data shown.
- The detailed methods and example workflows mirror the technology description’s approach to:

  - Paired-end read independent alignment in homologous regions
  - Ambiguous alignment resolution by pairing reads post single-end alignment
  - Use of tetraploid-aware variant calling for combined gene/pseudogene regions
  - Reflex strategies employing LR-PCR and MLPA to confirm variant origin
  - Quantitative CNV detection using HMM-based callers with adjusted ploidy
  - Analysis focused on PMS2/PMS2CL loci, emphasizing the challenges of homologous regions

#### Key Differences

- The patent focuses on the technical methods for read alignment and variant detection in homologous regions at the NGS data processing level.
- The disclosed method aims to improve accuracy in variant calling by better handling ambiguous reads through paired-end independent alignment and scoring.
- It does not describe nor claim the Bayesian integration of prior probabilities with observed variant data to quantify the posterior probability of a complete genetic diagnosis, or the explicit integration of false negative probability modeling.
- The patent lacks any discussion or claims on a genome-wide prior probabilistic framework that integrates population-level variant data, inheritance mode effects, and produces credible intervals for diagnosis certainty.
- Quant's novelty lies in genome-wide variant probability modelling and uncertainty quantification for diagnostic confidence, rather than solely on read alignment and variant calling methods focused on difficult homologous regions.
- Commonly referenced tools and datasets (gnomAD, ClinVar, PanelApp) appear generally but the patent does not discuss prior/posterior probability calculations or integrate TP/FN like Quant.
- The patent concerns mainly detection, alignment, and initial calling accuracy improvements, not the formal probabilistic quantification of diagnostic certainty.

#### Conclusion

Potential overlap — recommend legal review.

---

**Note:** The patent and the described Quant technology share substantive similarity in their approach to variant detection in highly homologous genomic regions such as PMS2/PMS2CL, including paired-end read independent alignment, ambiguous read resolution, and reflex testing workflows. However, the patent focuses on the computational and algorithmic methods of alignment and variant calling, while Quant’s key innovation centers on the Bayesian integration of prior probabilities with observed/missing variant data to quantify diagnostic confidence genome-wide. Since the claims encompass methods very close to the alignment, pairing, and variant calling approach employed by Quant at the technical level, there is potential for overlap, especially if Quant’s methods implement similar pairing and alignment strategies foundational to subsequent Bayesian analyses. The distinction lies in Quant’s unique probabilistic modelling layer beyond variant detection.

No other provided patents or publications were given for analysis. If additional references are provided, further sections can be generated accordingly.
