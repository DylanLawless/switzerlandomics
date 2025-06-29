## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for genomic and genetic analysis
- **Publication No.:** US20210202037A1
- **Publication Date:** 2021-07-01 (filing date) / Publication date varies; example accessed 2021
- **Link:** [https://patents.google.com/patent/US20210202037A1/en](https://patents.google.com/patent/US20210202037A1/en)

#### Abstract (excerpt)

> "The present invention relates to a method for genomic and/or genetic analysis of a human nucleic acid sample, the method comprising the steps of providing a group of human reference genomes; testing of the human nucleic acid sample for sex and/or ancestry; selecting one or more population-specific human reference genomes, PHREGs, from the group of human reference genomes on the basis of the results of the sex and/or ancestry test; and aligning the human nucleic acid sample to the selected PHREGs; and variant calling against the selected PHREGs."

#### Relevant Overlaps

- Use of population-specific human reference genomes (PHREGs) selected based on sex and/or ancestry testing of the human nucleic acid sample.
- Aligning (mapping) sequencing reads to these population-specific references to reduce alignment bias.
- Performing variant calling against the selected PHREGs.
- Use of machine learning for ancestry classification leveraging ancestry-informative markers.
- Encoding reference genomes at different allele frequency levels (majority allele, non-rare alleles with IUPAC ambiguity codes).
- Workflow involves NGS read mapping, variant calling, and interpretation steps.
- Some mention of personalized diagnostics and treatment based on variant calls.

#### Key Differences

- The patent focuses on improving accuracy of read mapping and variant calling by reducing reference genome bias via selection of PHREGs.
- The cited method does **not** describe or claim calculating genome-wide prior probabilities for disease-causing variants under Hardy-Weinberg Equilibrium.
- No explicit modeling or integration of true positive/false negative (TP/FN) probabilities, nor Bayesian posterior probabilities incorporating missing or unobserved variant data.
- Variant calling in the patent is conventional, performed against adjusted reference sequences; no Bayesian integration of patient-level evidence with population priors.
- No credible intervals or uncertainty quantification for diagnostic confidence.
- Ancestry and sex classification are used to select appropriate references for alignment, not to quantify diagnostic certainty or integrate uncertainty.
- Does not address genome-wide probability models for complete genetic diagnoses.

#### Conclusion

Not blocking for Quant.

The patent relates to read mapping and variant calling improvements via population-specific reference genomes and sample classification but does not cover Quant’s core innovations of Bayesian integration of prior variant probabilities with patient data and explicit modeling of TP/FN for diagnostic confidence estimation. Thus, it does not pose a potential infringement risk on Quant’s unique methodological framework.
