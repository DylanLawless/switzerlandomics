## Patent/Publication Analysis

### Reference #1

- **Title:** Method and system for newborn screening for genetic diseases by whole genome sequencing
- **Publication No.:** WO2023014816A1
- **Publication Date:** 2023-01-26
- **Link:** https://patents.google.com/patent/WO2023014816A1/en

#### Abstract (excerpt)

> "The present disclosure provides a method and system for testing newborns for genetic diseases, diagnoses and implementing optimal treatments. The invention provides for rapid detection of genetic disease in newborns, as well as identification of available therapeutic interventions that may be rapidly implemented to prevent death or adverse complications characterized by the genetic disease."

#### Relevant Overlaps

- The patent discloses methods that:
  - Determine comprehensive sets of genetic diseases amenable to treatment.
  - Identify pathogenic or likely pathogenic variants for these diseases.
  - Perform genetic sequencing (rapid WGS or exome sequencing) on patients (newborns).
  - Analyze sequence data by comparing diplotypes to known variant sets for screening.
  - Generate reports indicating positive screening results.
  - Include a self-learning system that updates population allele frequencies and variant pathogenicity assertions dynamically based on results and confirmatory testing.
  - Use natural language processing (NLP) on electronic health records (EHRs) to extract phenotypes for diagnosis.
  - Automate variant interpretation using Bayesian models, machine learning, and phenotype-genotype correlations.
  - Compute probabilities of diagnostic outcomes and provide confirmatory testing.
  - Provide acute management guidance linked to molecular diagnoses (via Genome-To-Treatment system).
  - Perform large-scale population screening and diagnosis integrated with variant frequency recalculation.
  - Employ automated systems decreasing manual variant review burden.

- The claims specify:
  - Methods including recalculating population allele frequencies incorporating observed variant data.
  - Detailed pipelines from disease and variant curation, sequencing, diplotype analysis, confirmatory testing, to clinical intervention.
  - Use of sparse databases optimized for rapid genotype frequency recalculation at scale.
  - Integration of phenotypic data extraction via NLP with variant analysis for provisional diagnosis.
  - Bayesian statistical modeling and risk estimation for genetic disorders.
  - Generation of reports delivering diagnosis probabilities and treatment recommendations.

#### Key Differences

- **Quant distinguishes itself by:**
  - A core innovation focused on calculating genome-wide **prior probabilities** of observing pathogenic variants under Hardy-Weinberg equilibrium and across all inheritance modes.
  - Explicit modeling and quantification of **false negatives (FN)** and **true positives (TP)** at variant and gene levels to compute **Bayesian posterior probabilities** of a **complete genetic diagnosis**, reflecting diagnostic **certainty with credible intervals**.
  - Scalability to **genome-wide analyses**, integrating observed variant data and missing/unobserved data (including suboptimal coverage) explicitly into the Bayesian framework.
  - Providing numerical probabilistic risk values, not just classification labels or pathogenicity scores.
  - Quant’s unique output includes credible intervals for diagnostic confidence — an uncertainty quantification rarely addressed by others.
  - Systems described in the patent emphasize variant filtering, positive screening identification, and management guidance but do **not explicitly quantify diagnostic confidence intervals incorporating FN estimates genome-wide** in a Bayesian posterior probability model as detailed in Quant.
  - The patent's system, while comprising automated variant classification and scoring, focuses on screening and diagnosis primarily by detecting known pathogenic variants and variant pathogenicity assertions and updating them. Quant’s novelty is the explicit probabilistic modeling of diagnosis certainty integrating prior frequencies with observed variant data, including false negatives.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:**  
This patent shares significant technical overlap with Quant’s area in large-scale genome-based newborn screening, automated variant interpretation, integration of genotype and phenotype data, and provision of therapeutic guidance. It describes methods for identifying pathogenic variants and applying confirmatory testing, as well as recalculating allele frequencies and variant pathogenicity dynamically. It employs Bayesian models and NLP similarly.

However, the precise innovation of Quant — specifically the explicit Bayesian framework calculating genome-wide prior probabilities, integrating false negative/true positive models to yield posterior probabilities of a complete genetic diagnosis with credible intervals — is not expressly disclosed here. The patent focuses more on variant identification, classification, screening positive determination, and management guidance, without explicitly modeling diagnostic confidence incorporating unobserved variant data probabilistically.

Because the disclosed methods cover core steps overlapping with Quant, particularly large-scale variant screening with population frequency updates and variant pathogenicity assertions, and have some Bayesian modeling for diagnosis, there is a potential overlap that warrants close consideration based on detailed claim construction and technical comparison.
