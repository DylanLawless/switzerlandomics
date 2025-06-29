## Patent/Publication Analysis

### Reference #1

- **Title:** Kits and methods of using kits
- **Publication No.:** CN114730610A
- **Publication Date:** 2021-03-19
- **Link:** https://patents.google.com/patent/CN114730610A/en

#### Abstract (excerpt)

> "A kit for genetic screening for use in a device, wherein the kit performs a wet lab assay when in operation. The assay comprises processing genetic material derived from one or more cellular exomes and detecting single nucleotide variants (SNVs), indels and copy number variations (CNVs) in genetic DNA reads from the genetic material. The kit includes a software product executable on computing hardware to cause the computing hardware to invoke an algorithm to process the genetic DNA reads by comparing portions of the genetic DNA reads to DNA sequence transcripts, in order to determine the probability of occurrence of the DNA sequence transcript in the DNA read data. The algorithm is used to simultaneously detect both SNVs and CNVs and to annotate clinically relevant CNVs."

#### Relevant Overlaps

- Detection of genetic variants including SNVs, insertions/deletions, and CNVs from sequencing data.
- Use of a software product executed on computing hardware to analyze and process genetic DNA reads by comparison to reference sequences (DNA sequence transcripts).
- Simultaneous detection and annotation of variant types (SNV, CNV, indels) in a single wet lab assay.
- Inclusion of pharmacogenomics marker detection and sample tracking SNP identification.
- Use of graphical user interface for visualization of variant detection and annotation.
- Handling multiple variant types in an integrated pipeline from wet-lab assay through bioinformatic processing to variant interpretation.
- Processing of single-cell sequencing data and incorporation of exome plus (exome+) target regions.
- Detection and annotation of clinically relevant CNVs, filtering and prioritization of variants based on phenotype associations.
- Variant classification and report generation for clinical decision support, including carrier screening and prenatal testing panels.
- Algorithms configured to detect mosaic variants, short tandem repeats (STR) and variable number tandem repeats (VNTR).
- Control systems configured to select optimal CNV detection applications based on precision and recall metrics using simulated data and baseline CNV sets derived from the genome data.
- Generation of simulated genome sequence datasets with artificial CNVs for benchmarking different candidate CNV detection algorithms.
- Performance evaluation of CNV detection algorithms using metrics such as precision, recall, and precision-recall (PR) curve areas.
- Bayesian carrier risk and Mendelian inheritance models for variant interpretation.
- Automatic assignment of evidence codes based on variant matches with established databases (ClinVar, ACMG).
- Integration of wet lab data processing and informatics within a unified, user-friendly framework.

#### Key Differences

- The patent focuses on a kit and methods for wet lab genetic screening assays integrating variant detection (SNV, indel, CNV) and downstream analysis including pharmacogenomics markers and sample tracking.
- Emphasis is placed on producing variant calls from sequencing data and providing integrated analysis pipelines for variant filtering, prioritization, and reporting.
- The patent extensively addresses CNV detection optimization by combining multiple CNV detection algorithms, simulating artificial CNVs, and benchmarking performance to choose the best method for a given data set — a process not described in the Quant technology.
- The patent highlights the use of simulation (e.g. using a tool like Ximmer) to generate artificial CNVs for algorithm performance evaluation, which is a technical focus distinct from Quant.
- There is no explicit mention or example of integrating prior probabilities and observed and unobserved variant data to compute a genome-wide Bayesian posterior probability of a complete genetic diagnosis, nor credible intervals showing diagnostic certainty.
- The patent does not describe employing the theory of true positive (TP), false negative (FN), true negative (TN), false positive (FP) integration into a Bayesian posterior diagnostic confidence model combining genome-wide prior probabilities with observed missing variant probabilities as in Quant.
- The focus is on variant detection and clinical annotation in a single assay, not on quantifying confidence or probability of a complete genetic diagnosis at the genome-wide level.
- Although both use Bayesian or probabilistic reasoning for carrier risk or variant prioritization, no detailed Bayesian integration of variant detection outcomes with prior gene-level probabilities and false negative modeling appears.
- The patent emphasis on wet lab kits, sequencing workflows, and CNV detection algorithm optimization stands apart from Quant’s computational framework for genome-wide variant probability integration toward diagnostic certainty.

#### Conclusion

Not blocking for Quant.

---

**Rationale:**  
While this patent shares common terminology regarding genetic variant detection (SNV, CNV, indels), sequencing data processing, and clinical variant annotation, it fundamentally differs from Quant’s core innovation. Quant uniquely quantifies genome-wide prior probabilities and integrates observed and unobserved variant data using a Bayesian model to compute posterior probabilities with credible intervals representing genetic diagnosis confidence. The patent focuses on integrated wet lab kits with multi-variant detection, CNV detection optimization via algorithm benchmarking using simulated CNVs, and clinical variant reporting. It does not describe or claim the specific computational theory and implementation of Bayesian posterior diagnostic probability combining TP, FN, TN, FP counts at the genome-wide scale central to Quant.

Therefore, this reference does not disclose or claim technology that would block Quant’s core novel approach focused on Bayesian posterior probability modeling of complete genetic diagnoses accounting for false negatives and multi-variant types collectively at a genome-wide level.
