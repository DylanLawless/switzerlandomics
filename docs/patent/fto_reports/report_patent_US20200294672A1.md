## Patent/Publication Analysis

### Reference #1

- **Title:** Automatic re-analysis of genetic testing data  
- **Publication No.:** US20200294672A1  
- **Publication Date:** 2020-09-17  
- **Link:** https://patents.google.com/patent/US20200294672A1/en  

#### Abstract (excerpt)

> "Disclosed herein are systems and methods for the automatic re-analysis of genetic testing data. A centralized computing system can analyze genetic testing data and automatically re-analyze the genetic testing data when the centralized computing system is updated. ... Based on the re-analysis, a suggested diagnoses and/or treatment plans can be revised."

#### Relevant Overlaps

- Use of a centralized computing system to receive and analyze genetic testing data.
- Capability to update genetic analysis software/tools/methods and re-analyze genetic data accordingly.
- Providing suggested diagnoses and revising treatment plans based on analysis and re-analysis of genetic testing data.
- Utilization of genetic databases and knowledgebases (e.g., ClinVar, OMIM, dbSNP) for variant interpretation.
- Storage and management of patient genetic data and medical records.
- Remote communication and genetic counseling features integrating patient and clinician inputs.
- Analysis includes determining genetic mutations, polymorphisms, deletions, insertions, or other genetic features of interest.

#### Key Differences

- The patent focuses on systems/methods for managing genetic testing workflows, data storage, remote communication, and automatic re-analysis triggered by software or database updates.
- There is no explicit description or claim illustrating use of prior probabilities of observing pathogenic variants at genome-wide scale.
- The patent does not disclose integration of prior probabilities with observed and unobserved (false negative) variant data to compute Bayesian posterior probabilities for a genetic diagnosis.
- No explicit modeling of true positives (TP), false negatives (FN), or credible intervals capturing diagnostic uncertainty.
- The described analysis methods appear to identify or classify variants or generate suggested diagnoses, but without the unique probabilistic framework integrating population genetics models.
- The claimed subject matter emphasizes updating analysis tools and re-processing data, not a novel method quantifying diagnostic confidence incorporating inheritance mode, allele frequencies, and sequencing completeness.
- The system centers on clinical workflow, communication, reporting, and data storage rather than a novel statistical method or software for genome-wide variant probability calculation as in Quant.

#### Conclusion

Not blocking for Quant.

*Explanation:* Despite overlapping in the broad domain of genetic testing data analysis and remote genetic counseling systems, this patent does not disclose or claim the core theoretical framework underpinning Quant—specifically the genome-wide Bayesian integration of prior probabilities with observed and missing variant data (accounting for TP and FN rates) to derive posterior probabilities of complete genetic diagnosis with credible intervals. The patent is primarily about managing genetic data workflows, re-analysis triggered by software updates, and remote communication infrastructure, which are distinct from Quant’s unique probabilistic diagnostic certainty modeling.
