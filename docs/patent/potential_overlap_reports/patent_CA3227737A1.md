## Patent/Publication Analysis

### Reference #1

- **Title:** Method and system for newborn screening for genetic diseases by whole genome sequencing
- **Publication No.:** CA3227737A1
- **Publication Date:** 2022-07-07
- **Link:** https://patents.google.com/patent/CA3227737A1/en

#### Abstract (excerpt)

> "The present disclosure provides a method and system for testing newborns for genetic diseases, diagnoses and implementing optimal treatments. The invention provides for rapid detection of genetic disease in newborns, as well as identification of available therapeutic interventions that may be rapidly implemented to prevent death or adverse complications characterized by the genetic disease."

#### Relevant Overlaps

- The invention performs **genome-wide sequencing** (WGS/rWGS) on newborn or infant samples.
- Automates the analysis pipeline, including **variant calling, annotation, and interpretation**.
- Uses phenotype data extraction via **natural language processing (CNLP) of electronic health records (EHRs)** to generate phenotypic features.
- Compares phenotypic features to known phenotypes of genetic diseases to generate differential diagnoses.
- Employs a **ranking system of genetic diagnoses** combining phenotypic similarity and variant pathogenicity.
- Incorporates a **virtual management guidance system** (Genome-to-Treatment, GTRx™) linking diagnoses to curated, expert-reviewed therapeutic interventions.
- Considers inheritance mode and diplotypes, including compound heterozygosity, recessive/dominant/X-linked patterns.
- Implements **feedback loops and self-learning**: population allele frequency recalculation, variant pathogenicity updating based on confirmatory testing.
- Employs **automated confirmatory testing and updates variant pathogenicity calls** accordingly.
- Supports **rapid turnaround (13.5-20 hours)** for diagnosis and clinical reporting.
- Uses **Bayesian and AI models** (MOON™, GEM™, etc.) for variant interpretation including phenotype-genotype integration.
- The technology is intended for **population-scale newborn screening and diagnosis** with scalability and automated workflows.
- The method includes identifying **true positives (TP), false positives (FP), false negatives (FN), and true negatives (TN)** to refine variant lists and improve accuracy.
- Supports multiple sequencing input types (blood, dried blood spot, saliva) and multigenerational samples (trios).
- Provides probability-based confidence (credible intervals) in diagnosis and management recommendations.
- The system includes a **sparse database structure** to efficiently handle genotype frequencies and the n+1 problem in population data.
- Covers **hundreds of genes and hundreds of childhood-onset, severe genetic diseases with effective treatments**.

#### Key Differences

- While Quant specifically emphasizes calculation of **prior probabilities of disease-causing variants genome-wide combined with modeling of false negatives (missing variants) to derive Bayesian posterior probabilities of a complete genetic diagnosis**, the patent focuses more broadly on **using phenotype-genotype correlations and variant pathogenicity classification to generate provisional diagnoses and link to treatment guidance**.
- The patent incorporates **natural language processing of EHRs for phenotype extraction**, a feature not central to Quant’s described method.
- Quant elaborates specifically on **integration of Hardy-Weinberg expectations and prior probabilities across all genes and modes of inheritance** to compute gene- and variant-level probabilities, which is less explicitly addressed in the patent text that focuses on variant filtering, ranking, and management guidance.
- The patent mainly addresses **newborn screening and rapid diagnosis workflows at a population scale**, with dynamic variant/pathogenicity updating through a learning feedback loop, whereas Quant focuses more on the **statistical modeling of TP, FP, TN, FN variant observations to compute Bayesian posterior diagnostic confidence with credible intervals**.
- Quant highlights that many prior tools only classify variants as pathogenic/benign, whereas it quantifies diagnostic confidence incorporating **uncertainty from false negatives and unobserved variation**. The patent does not explicitly disclose such a statistical modeling framework focusing on false negative probabilities or credible interval reporting.
- The patent describes also clinical natural language processing and expert-curated treatment databases as novel innovations, which are separate from Quant’s core computational model.
- Quant does not primarily rely on EHR-derived phenotypes or AI ranking tools trained on literature, while the patent deeply integrates these for diagnosis and management.
- The patent system includes provisions for re-analyses, updating pathogenicity assertions based on clinical confirmatory tests, while Quant focuses on initial calculation of diagnostic confidence with integration of missing variant probabilities.
- Quant is described as a software framework for **quantifying genetic diagnosis probability over all human genes and inheritance modes**, whereas the patent describes a **method and system specifically for newborn screening and clinical management guidance**.

#### Conclusion

Potential overlap — recommend legal review.

*Rationale:* The patent describes comprehensive methods for rapid genetic disease diagnosis and newborn screening using whole genome sequencing, integrating variant pathogenicity, inheritance mode, phenotype-driven prioritization, confirmatory testing, and dynamic variant pathogenicity updating. These overlap multiple aspects of Quant’s technology, especially in utilizing diplotypes, inheritance modes, variant frequencies, and integrating clinical evidence to generate diagnostic reports. Although the patent also adds unique components like CNLP phenotype extraction and detailed treatment curation, its core of integrating variant pathogenicity with sequencing data for diagnosis at population scale parallels the fundamental Bayesian combination of observed variant evidence and disease probabilities in Quant, particularly with respect to how true positives and false positives/negatives are iteratively incorporated and how diplotype allele frequencies are recalculated dynamically. Given the similarity in purpose, scale, and some aspects of the diagnostic inference method (using variant types and inheritance modes, and evaluation of TP, FP, TN, FN outcomes), this patent may pose a blocking issue or have claim scope overlapping key elements of Quant’s approach. Careful legal review focusing on claims and exact claim limitations compared to Quant’s unique Bayesian modeling of missing data and diagnostic confidence intervals is warranted.