## Patent/Publication Analysis

### Reference #1

- **Title:** System, method and computer-accessible medium for secure and compressed transmission of genomic data  
- **Publication No.:** US20160080528A1  
- **Publication Date:** 2016-03-17  
- **Link:** https://patents.google.com/patent/US20160080528A1/en  

#### Abstract (excerpt)

> "An exemplary system, method and computer-accessible medium can be provided for generating an encrypted reference-based secure-compression of randomly located short sequence reads from a genome(s), which can, for example, including obtaining information related to the randomly located short sequence reads, obtaining second information related to a plurality of reference sequences for the genome(s), generating third information related to a set of edit calls containing location information based on the first and second information using a base-calling procedure and an alignment procedure, and generating the encrypted reference-based secure-compression of the first information based on the third information."

#### Relevant Overlaps

- Uses Bayesian procedures integrating analog intensity sequencing signals with reference genome information during base-calling and alignment.
- Generates edit calls (variant differences) relative to reference sequences.
- Performs reference-based compression by storing read locations and differences rather than raw reads.
- Employs encryption (public key cryptography) and randomized ordering of variant/location data for privacy.
- Compresses and securely transmits genomic data suitable for clinical sequencing contexts.
- The system supports using quality scores and Bayesian scoring for base-calling accuracy.
- Incorporates parametric models of quality scores to aid compression.
- Uses Burrows-Wheeler transform with FM-index for reference genome storage and efficient lookups.
- Simultaneous base-calling and alignment in a unified pipeline (TotalRecaller).
- Targets real-time correction of sequencing errors to reduce false positives and false negatives at the read level.

#### Key Differences

- The technology focuses exclusively on **base calling, alignment, compression, and secure transmission** of raw sequencing data (short reads).
- Does not integrate disease prior probabilities or genetic disease diagnosis probabilities.
- Does not calculate or integrate genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg equilibrium.
- Does not model or integrate observed vs. unobserved variant data (true positives, false negatives) to produce a **Bayesian posterior probability of genetic diagnosis**.
- No mention or description of gene-level aggregation or credible intervals on diagnostic confidence.
- The Bayesian methods are applied to sequencing read base calling and error correction, not variant pathogenicity or diagnosis probability estimation.
- No specific handling or modeling of inheritance modes or disease penetrance.
- Does not provide clinical or disease-specific risk estimates beyond variant calling.
- Largely concerned with **efficient storage, error correction, encryption**, and **compressed output** of sequencing data.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** While this patent employs Bayesian models and references public genome sequences (like Quant’s use of reference sequences), its core inventive concept lies in base-calling optimization, alignment, error correction, and secure compression of raw sequence read data. It **does not address the unique Quant innovation of integrating genome-wide prior probabilities of disease variant observations with patient-specific observed/missing variant data to compute a Bayesian *diagnostic* posterior probability** that accounts for false negatives and inheritance models. Therefore, no direct technical overlap of Quant’s diagnostic probability modeling exists here that would block freedom to operate.

---

*End of report.*
