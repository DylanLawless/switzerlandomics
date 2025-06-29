## Patent/Publication Analysis

### Reference #1

- **Title:** Ultra-sensitive liquid biopsy through deep learning empowered whole genome sequencing of plasma
- **Publication No.:** WO2023018791A1
- **Publication Date:** 2023-02-02
- **Link:** https://patents.google.com/patent/WO2023018791A1/en

#### Abstract (excerpt)

> "Systems, methods, and computer program products are provided for classifying sequence fragments and labelling sequence fragments that represent tumor markers... A regional probability based on a plurality of regional features from the patient is received from a first trained classifier. A tensor is generated comprising a corresponding reference sequence, the first read, the second read, a first position, a second position, and an alt position. A local probability based on the tensor is received from a second trained classifier comprising a convolutional neural network. A label associated with a tumor marker is determined when the regional probability is above a first predetermined threshold and the local probability is above a second predetermined threshold."

#### Relevant Overlaps

- Use of paired-end reads and construction of a tensor representation of fragment data as input to a convolutional neural network classifier.
- Integration of a regional classifier (multilayer perceptron, MLP) that analyzes regional genomic features such as chromatin accessibility, replication timing, transcription direction, mutational density, and other epigenetic and genomic context features.
- Joint ensemble model combining outputs from regional (MLP) and fragment-level (CNN) classifiers to predict whether a fragment contains a true tumor-derived mutation (ctDNA) or is an artifact.
- Application of deep learning to classify individual sequencing fragments for the detection of circulating tumor DNA (ctDNA) without reliance on multiple fragment consensus, enabling ultra-sensitive detection especially in low tumor fraction plasma samples.
- Inclusion of quality filters, fragment-based features (e.g., fragment length, base qualities, edit distance), and regional biological features to enhance classification accuracy.
- Use of Bayesian or probabilistic modeling concepts is implicit in determining probabilities and thresholds leading to final ctDNA labelling.
- Scalable to whole genome sequencing data and applicable for minimal residual disease monitoring, therapeutic response tracking, and early cancer detection.
- Use of supervised machine learning trained on tumor-confirmed fragments from different cancer types (melanoma, lung, colorectal).
- The method explicitly accounts for single nucleotide variants (SNVs) in cfDNA fragments and discriminates true positives from false positives with high specificity using predetermined probability thresholds.

#### Key Differences

- This patent focuses predominantly on somatic mutation detection in circulating tumor DNA from plasma using deep learning classifiers on WGS data, specifically integrating fragment-level (CNN) and regional-level (MLP) features.
- The claims and detailed description are about classifying sequence fragments as tumor-derived or artifact with emphasis on liquid biopsy for cancer detection.
- The methodology is fragment classification in a cancer liquid biopsy context, rather than genome-wide prior probability estimation of disease-causing variants integrating observed/missing variant data and inheritance modes as in Quant.
- No indication of calculating gene-level prior pathogenic variant probabilities across the genome or explicit integration of missing variant probabilities (false negatives) or inheritance mode modeling.
- No explicit modeling or quantification of Bayesian posterior probability for a **complete genetic diagnosis** or genomic disease confidence intervals.
- The system does not incorporate Hardy-Weinberg Equilibrium-based prior probabilities or genetic disease inheritance modes as Quant does.
- The deep learning model is trained for classification of tumor fragments vs. sequencing noise; while Quant’s novelty is in integrating prior probabilities at variant and gene levels with patient-specific variant observations and false negative modeling—thus focusing on causal diagnosis probability.
- Use case and technology context differ: This patent addresses ultra-sensitive ctDNA detection for cancer diagnostics and monitoring, distinct from human genetic rare disease diagnosis and pathogenic variant probability quantification across all genes in Quant.
- Quant’s unique theory rests on combining prior variant probabilities with observed/missing variants for diagnosis certainty, whereas this patent focuses on variant-level fragment classification and cancer mutation calling using neural networks.

#### Conclusion

**Not blocking for Quant.**

Reasoning: Although this patent and Quant both leverage Bayesian classifiers and deep learning for variant-level analysis, this patent pertains specifically to fragment-level classification for circulating tumor DNA detection in oncology liquid biopsy. It does not claim or describe the genome-wide prior probability modeling, inheritance mode integration, or Bayesian posterior computation of complete genetic diagnosis certainty central to Quant. The similarity lies in machine learning application to sequencing fragments but not in the unique theoretical framework or diagnostic certainty quantification of Quant.

---

# Summary

- The patent WO2023018791A1 describes a system using an ensemble of CNN and MLP classifiers to identify ctDNA fragments from WGS plasma data for cancer diagnosis.
- Quant’s core innovation is genome-wide Bayesian estimation of prior variant pathogenicity probabilities integrated with observed data and false negative probabilities to estimate causal diagnosis confidence across all genes and inheritance modes.
- The patent emphasizes fragment-level variant classification in cancer WGS liquid biopsy, not genome-wide prior-based diagnosis certainty modeling.
- Therefore, the patent does not block Quant’s novel method of integrating prior probabilities with variant observations and missing data for complete genetic diagnostic probability.
