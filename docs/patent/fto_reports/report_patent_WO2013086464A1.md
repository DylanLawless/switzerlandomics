## Patent/Publication Analysis

### Reference #1

- **Title:** Markers associated with chronic lymphocytic leukemia prognosis and progression
- **Publication No.:** WO2013086464A1
- **Publication Date:** 2013-06-13
- **Link:** https://patents.google.com/patent/WO2013086464A1/en

#### Abstract (excerpt)

> "The present invention provides methods and devices related to markers (or biomarkers) associated with chronic lymphocytic leukemia (CLL). Examples of these markers include drivers of CLL progression. The invention contemplates, inter alia, detecting the clonal, including subclonal, profile of CLL in a subject and the presence (or absence) of subclonal driver mutations, and utilizing this information in predicting disease progression, need, timing and/or nature of treatment regimen, and likelihood and frequency of relapse."

#### Relevant Overlaps

- **Detection of subclonal driver mutations in CLL:** The patent focuses on identifying and characterizing mutations in specific genes associated with CLL, including SF3B1, TP53, ATM, NOTCH1, MYD88, and a list of others, via analyzing samples for clonal and subclonal mutations.
- **Use of subclonal mutation status for prognosis and treatment decisions:** Methods for predicting disease progression, treatment timing, aggressiveness, and likelihood of relapse informed by clonal heterogeneity and subclonal profiles.
- **Involvement of specific SF3B1 mutations:** Missense mutations at K700E, R625L/G, N626H, and others within exons 14-17 are detailed, which overlap with the patent’s claims and disclosed data.
- **Consideration of multiple CLL-associated markers and cytogenetic abnormalities:** Integration of mutated IGHV status, ZAP70 expression, chromosomal abnormalities (del(8p), del(11q), del(17p), trisomy 12, etc.) into the risk evaluation framework.
- **Clonal evolution monitoring by sequencing:** Use of whole-exome/genome sequencing, SNP arrays, and deep sequencing to infer cancer cell fraction (CCF), distinguish true positive (TP) mutations from false negatives (FN), and monitor subclonal dynamics over time.

#### Key Differences

- **No explicit Bayesian model integrating prior probabilities and false negative probabilities:** The patent focuses on detecting mutations and cytogenetic abnormalities and associating their presence with prognosis and treatment outcomes. It does not disclose a genome-wide computational framework quantifying prior probabilities of observing pathogenic variants across all genes under Hardy-Weinberg equilibrium, nor does it detail integration of TP, FN, TN, FP rates into a Bayesian posterior probability of genetic diagnosis certainty.
- **No genome-wide prior probability modeling:** The patent enumerates specific CLL-associated genes, their mutations, and clinical correlations but does not claim or describe a statistical model to compute genome-wide variant-disease probabilities or credible intervals of diagnostic confidence.
- **Focus on specific leukemia and genes rather than a general genome-wide platform:** Quant is genome-wide and covers all human genes and modes of inheritance, while the patent is focused on prognostic markers in CLL, a specific disease.
- **No mention of explicit modeling of mode of inheritance or Hardy-Weinberg equilibrium:** The patent does not discuss these genetic population principles.
- **No description of diagnostic certainty quantification through probabilistic posterior calculation:** The patent describes prognostic classification based on mutation presence or subclonality but does not provide a computational method quantifying diagnostic confidence including potential false negatives.

#### Conclusion

**Not blocking for Quant.**

*Explanation:* This patent covers detection and clinical interpretation of subclonal and clonal driver mutations, especially SF3B1 and associated genes in CLL, to prognosticate and decide treatment. Although there is overlap in the use of mutation detection, subclonality analysis, and clinical correlation in CLL, it lacks the core Quant innovation: calculating genome-wide prior probabilities integrated with observed/missing variant data via Bayesian posterior models including TP, FN, and providing credible intervals of genetic diagnostic certainty. The patent is disease- and gene-specific without describing or claiming genome-wide probabilistic modeling or diagnostic certainty quantification, so it does not block Quant’s genome-wide variant probability platform or its unique Bayesian diagnostic confidence integration.
