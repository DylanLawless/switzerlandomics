## Patent/Publication Analysis

### Reference #1

- **Title:** Determining the health status with cell-free DNA using cis-regulatory elements and interaction networks
- **Publication No.:** WO2024056722A1
- **Publication Date:** 2024-03-21 (first publication date on google patents)
- **Link:** https://patents.google.com/patent/WO2024056722A1/en

#### Abstract (excerpt)

> "The present invention relates to methods and means for analyzing cell-free DNA for determining regulation networks … The invention includes determining nucleosome positions and optionally also open chromatin regions … integrating nucleosome positions and/or many open chromatin features, particularly at the network level … determining regulation networks selected from the group consisting of: a transcription factor (TF)-gene network; a TF-TF network; a gene-gene network; a TF-DNase hypersensitive site (DHS) network; and a DHS-gene network."

#### Relevant Overlaps

- Uses cell-free DNA (cfDNA) to infer biological states by computing nucleosome positions and open chromatin regions.
- Builds multiple gene regulatory networks: TF-gene, TF-TF, gene-gene, TF-DHS, DHS-gene.
- Utilizes sequencing data of cfDNA fragments and aligns them to reference genomes.
- Computes fragment coverage and fragmentation (length) patterns to infer chromatin accessibility and transcriptional activities.
- Integrates tissue-specific regulatory element data, known TF binding sites, and distal regulatory DHSs.
- Performs tissue-correlation and deconvolution using these networks.
- Applies machine learning models (e.g., neural networks) to classify health/disease states using network-derived features.
- Produces models for health status, disease monitoring, treatment success, and aging based on cfDNA regulatory network signatures.
- Uses prior nucleosome positioning probabilities and Bayesian inference indirectly (though bayesian step framed in nucleosome position calling).
- Explicitly includes TFBS accessibility scores, entropy measures at TSS and binding sites.
- Includes network, interaction, and statistical correlation analyses for regulation inference.
- Focus on open chromatin combined with regulatory networks derived from cfDNA fragment data.
- Uses raw cfDNA sequence data integration with public regulatory datasets (ENCODE, GTRD, etc.) to build comprehensive regulatory networks.

#### Key Differences

- Quant is designed for genome-wide variant probability interpretation using Bayesian integration of prior variant probabilities (e.g., Hardy-Weinberg-based prior probabilities of pathogenic variants per gene) with observed or missing variant data in a patient to derive posterior probability of a complete genetic diagnosis.
- Quant’s core novelty is quantification of genetic diagnostic confidence by integrating prior probabilities with observed/missing variant data accounting for false negatives at variant and gene-level.
- The patent focuses on cfDNA fragmentation and chromatin accessibility to infer regulatory networks and tissue-of-origin, disease status, and monitor treatment, specifically using nucleosome and TF binding patterns.
- The patent’s technology is not directed towards variant pathogenicity scoring, nor genome-wide prior probabilities of pathogenic variant occurrence.
- The patent’s Bayesian modeling relates mostly to nucleosome dyad probability inference based on fragment lengths and cleavage resistances, not to genetic diagnosis confidence or variant detection probabilities.
- There is no mention of classification or probabilistic modeling of variant true positives/false negatives, disease-causing probabilities of alleles, or Hardy-Weinberg equilibrium-based variant prior probabilities.
- The systems focus on cfDNA fragmentomics for epigenetic, regulatory network inference, and tissue/cancer detection, rather than variant pathogenicity or genetic diagnosis probability.
- Terminology overlap (e.g., Bayesian, fragment length, TFBS, DHS) exists but methods, aims, and mathematical models differ fundamentally.
- No claim or description of integrating variant population frequencies, ClinVar annotations, or constructing gene-level pathogenic variant prior probabilities.
- No discussion of calculating credible intervals or posterior probabilities of complete genetic diagnosis from patient variant calls.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
WO2024056722A1 discloses cfDNA analysis to infer chromatin accessibility, nucleosome positioning, and gene regulatory networks (TF-gene, TF-TF, gene-gene, TF-DHS, DHS-gene), using sequencing fragment patterns and epigenomic data. It applies machine learning to classify health states and diseases based on cfDNA regulatory network signatures. Although related to genome sequencing and biological data integration, it does not address Quant’s unique method of calculating prior disease variant probabilities and integrating observed variant data (TP/FN) to generate Bayesian posterior probabilities of a complete genetic diagnosis. The underlying technical approaches, data inputs, mathematical models, and intended uses are distinct and non-overlapping in scope.
