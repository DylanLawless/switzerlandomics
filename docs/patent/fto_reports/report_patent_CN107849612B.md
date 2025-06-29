## Patent/Publication Analysis

### Reference #1

- **Title:** Alignment and variant sequencing analysis pipeline  
- **Publication No.:** CN107849612B  
- **Publication Date:** 2019-07-16  
- **Link:** [https://patents.google.com/patent/CN107849612B/en](https://patents.google.com/patent/CN107849612B/en)

#### Abstract (excerpt)

> "Systems and methods for analyzing gene sequence data from a Next Generation Sequence (NGS) platform are provided... Variant calling was performed using a modified GATK variant calling machine. Mapping reads to genomic reference sequences was performed with a Burrows Wheeler Aligner (BWA) and did not include soft-clipping."

#### Relevant Overlaps

- Use of NGS data processing pipelines involving:  
  - Mapping reads with BWA aligner (without soft clipping).  
  - Variant calling using a modified Genome Analysis Toolkit (GATK) variant caller.  
- Local realignment of reads using modified Smith-Waterman algorithm, restricted to coding regions +/- 50 bp (exons) in genes of interest (e.g. BRCA1, BRCA2).  
- Use of biotinylated RNA baits for exon capture prior to sequencing, i.e., targeted enrichment.  
- Emphasis on removing PCR duplicates ("deduplication") and adjusting quality metrics, including minimum unique clone counts (~20) to reduce false positives.  
- Reporting pipeline includes variant calling at each genomic position in targeted regions; forced calling (no suppression) of variants to maximize sensitivity, including indels >9 bp.  
- Integration of quality control metrics based on unique molecular identifiers and clone balancing to address sequencing biases.  
- Applied in clinical diagnostic (BRCA1/2 variant detection) workflow with high sensitivity and specificity.  
- Inclusion of manual review and data annotation processes for variant classification.

#### Key Differences

- The patent focuses solely on the alignment, variant calling, and sequencing data analysis pipeline for variant detection, particularly germline mutations in cancer susceptibility genes (BRCA1 and BRCA2).  
- No description or claim relates to integrating prior probabilities of observing pathogenic variants across the genome, nor Bayesian posterior computation of patient-level diagnostic certainty incorporating observed true positives (TP) and assessing false negatives (FN).  
- Does not address genome-wide prior probability estimation, nor computation of credible intervals quantifying diagnostic confidence.  
- Lacks incorporation of inheritance mode modeling and integration of population-level variant frequency data into joint probabilistic diagnosis.  
- Methodology aimed at variant detection accuracy and calling sensitivity rather than downstream probabilistic diagnostic inference or quantification of diagnostic uncertainty.  
- Does not use confusion matrix components (TP, FN, FP, TN) explicitly for the purpose of genome-wide pathogenic variant observation probability modeling.  
- Does not describe producing a Bayesian posterior that accounts for potential false negatives or missing data as a core feature.  
- The claimed software tools and methods for NGS processing are well-known and standard in variant detection workflows, without innovative integration into a probabilistic diagnosis framework.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent claims an NGS data processing workflow that includes well-known tools such as BWA for alignment (without soft clipping), modified GATK for variant calling, improved local realignment by Smith-Waterman restricted to ±50 bp flanking coding regions, and PCR duplicate removal with quality filtering based on clone counts. These features overlap technically with Quant’s processing steps from raw sequencing data through variant calling.

However, the patent is focused on the bioinformatics pipeline for detecting variants, particularly in BRCA genes, and improving sensitivity for indels >9 bp. It does not address Quant’s unique theoretical framework—namely, quantifying genome-wide prior probabilities of variant observation, integrating observed variant data with probabilities of false negatives, and computing Bayesian posterior probabilities with credible intervals for confidence in a complete genetic diagnosis.

The analytical innovations of Quant go beyond variant scoring or variant calling pipelines like those described here and focus explicitly on diagnostic certainty estimation using Bayesian models and statistical approaches based on confusion matrix components. These are absent from the patent.

Therefore, there is no blocking overlap on Quant’s core innovation, and this patent principally covers a sequence analysis method that is complementary but distinct from Quant’s diagnostic probability modeling approach.
