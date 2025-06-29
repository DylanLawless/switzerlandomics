## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and apparatus for identifying one or more genetic variants associated with disease in an individual or group of related individuals
- **Publication No.:** WO2018051072A1
- **Publication Date:** 2018-03-29
- **Link:** https://patents.google.com/patent/WO2018051072A1/en

#### Abstract (excerpt)

> "Methods and apparatus for identifying one or more genetic variants associated with a disease are disclosed. In one arrangement a method comprises receiving input data comprising a set of candidate genetic variants present in an individual or group of individuals. A set of candidate hypotheses is generated. Each candidate hypothesis comprises a set of one or more of the candidate genetic variants. Prioritisation data is received. The prioritisation data represents an initial prioritisation of the candidate hypotheses in relative order of likely validity. A plurality of update steps is performed. Each update step takes as input all of the prioritised candidate hypotheses from a preceding step and updates the prioritisation using update reference data. A prioritised list of candidate hypotheses is output after the updating of the prioritisation provided by the plurality of update steps."

#### Relevant Overlaps

- Use of **Bayesian probabilistic modeling** with a sequence of update steps (Bayesian updates) to refine posterior probabilities for candidate genetic variant hypotheses.
- Generation of candidate hypotheses combining variant sets and inheritance modes (dominant, recessive, compound heterozygous, X-linked).
- Integration of multiple sources of external reference data (allele frequency bins, variant consequence annotation, spatial clustering, gene lists) through update factors (Bayes factors).
- Explicit modeling and inclusion of a **"non-genetic cause" hypothesis** in the candidate set.
- Calculation of **posterior probabilities** for candidate hypotheses, enabling ranking by likelihood of being disease-causing.
- Computation and reporting of the **individual contribution of each update step** (Bayes factor) to the final prioritisation, providing interpretability.
- Management of variants irrespective of strict filtering thresholds—no candidate variant is discarded prematurely.
- Incorporation of inheritance mode prior probabilities, including personalized priors based on parental phenotype and consanguinity.
- Use of well-known databases (ClinVar, 1000 Genomes) for estimating distributions for pathogenic and non-pathogenic variants.
- Patient-level genotype data input (VCF) and inheritance-context-aware modeling.
- The updates explicitly rely on probability distributions over variants considered true positives (pathogenic) and true negatives (non-pathogenic), consistent with a framework integrating TP and FN evidence.

#### Key Differences

- The patent's described method focuses on **prioritising candidate variant hypotheses toward likely pathogenicity**, incorporating inheritance modes and various annotation metrics, but it does not explicitly describe estimating a **genome-wide prior probability of observing pathogenic variants per gene** under Hardy-Weinberg equilibrium as a foundational prior.
- The patent focuses on generating a **posterior probability that a variant (or set thereof) is causative for disease** but does not explicitly model or report a **posterior probability that a patient truly harbors a disease-causing variant accounting systematically for false negatives (e.g., missed variants) or unsequenced regions**.
- Quant’s core innovation is quantifying **confidence of a complete genetic diagnosis integrating observed and missing variant data**, explicitly modeling false negatives to produce uncertainty bounds (credible intervals). The patent does not disclose this comprehensive diagnostic certainty quantification.
- The patent emphasizes a probabilistic prioritisation and ranking of candidate variants but stops short of the **genome-wide probabilistic modeling of variant observability and cumulative diagnostic confidence** that Quant embodies.
- Quant specifically produces **credible intervals reflecting diagnostic uncertainty**, a feature not stated in this patent.
- While both use Bayesian updating, the patent uses update steps based on variant annotations and gene lists but does **not detail integration of population genetics models like Hardy-Weinberg equilibrium to estimate prior variant occurrence probabilities genome-wide**.
- The patent’s approach considers sets of variants and inheritance modes primarily to **increase sensitivity and reliability of identifying disease variants** rather than providing quantitative risk estimates for the entire genome or confidently assessing the **absence of a genetic cause** based on false negative modeling.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:** The patent WO2018051072A1 describes a Bayesian prioritisation framework for genetic variants combining candidate hypotheses and inheritance modes, updating probabilities via external data in a probabilistic model. This overlaps significantly with Quant’s Bayesian updating principles and the use of inheritance modes. However, Quant’s unique aspect of genome-wide prior probability modeling integrating false negatives and producing quantitative diagnostic confidence with credible intervals is not disclosed explicitly in this prior art. The overlap in Bayesian update methodology and integration of true positive/false negative concepts warrants cautious consideration in FTO analysis.
