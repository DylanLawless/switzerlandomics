## Patent/Publication Analysis

### Reference #1

- **Title:** System, method and computer-accessible medium for secure and compressed transmission of genomic data  
- **Publication No.:** US10116632B2  
- **Publication Date:** 2018-10-30  
- **Link:** https://patents.google.com/patent/US10116632B2/en  

#### Abstract (excerpt)

> "An exemplary system, method and computer-accessible medium can be provided for generating an encrypted reference-based secure-compression of randomly located short sequence reads from a genome(s), which can, for example, include obtaining information related to the randomly located short sequence reads, obtaining second information related to a plurality of reference sequences for the genome(s), generating third information related to a set of edit calls containing location information based on the first and second information using a base-calling procedure and an alignment procedure, and generating the encrypted reference-based secure-compression of the first information based on the third information."

#### Relevant Overlaps

- The patent focuses on compression, encryption, and secure transmission of genomic sequence data, specifically through reference-based compression by storing locations of reads relative to a reference genome.
- It uses Bayesian methods integrated with raw analog intensity data and reference sequences for base calling and alignment.
- The invention includes generating edit calls (variants) relative to the reference and compresses and encrypts that information for storage and transmission.
- Bayesian models are applied in base-calling procedures to improve accuracy and compression.
- Uses probabilistic modeling and empirical optimization for error correction in sequencing.
- Employs encryption for patient data privacy.
- Handles short-read alignments, variant calling, and data compression jointly.
- The patent incorporates use of population reference genomes (haplotypic, genotypic).
  
#### Key Differences

- The patent does **not** explicitly address integrating prior probabilities of disease-causing variants genome-wide or calculating gene-level pathogenic variant observation probabilities under modes of inheritance.
- Does **not** disclose computing a Bayesian posterior probability of a **genetic diagnosis** integrating true positives, false negatives, or credible intervals reflecting diagnostic certainty.
- Focus is on base-calling accuracy improvement, read alignment, secure compression, and data storage, not on downstream clinical diagnosis confidence modeling.
- No mention of using clinical variant classifications (e.g., ClinVar), gene-disease panels, or inheritance mode modeling.
- No explicit modeling of TP, FP, TN, FN outcomes in diagnostic certainty context.
- Patent’s Bayesian use is related to nucleotide base-calling likelihoods given raw data and reference, not integrating observed and missing variants for disease probability.
- The system aims at better sequencing data management, error reduction, and compression rather than variant pathogenicity scoring or genetic diagnosis probabilities.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent describes an advanced platform for improving sequencing base calls via Bayesian methods, compressing, encrypting, and securely transmitting genomic data relative to reference genomes. Although it shares a Bayesian approach for raw data interpretation and involves edit calls (variants), it fundamentally differs from Quant’s unique focus on quantifying genome-wide prior probabilities of pathogenic variants and integrating TP/FN data to estimate Bayesian posterior probabilities of complete genetic diagnoses. The patent does not address integration of clinical variant databases, gene panels, or inheritance modes to estimate disease-causing variant probabilities or diagnostic confidence intervals. Therefore, there is no technical method overlap in the core innovative area of Quant.
