## Patent/Publication Analysis

### Reference #1

- **Title:** Method and system for newborn screening for genetic diseases by whole genome sequencing
- **Publication No.:** EP4381510A1
- **Publication Date:** 2022-04-13
- **Link:** https://patents.google.com/patent/EP4381510A1/en

#### Abstract (excerpt)

> "The present disclosure provides a method and system for testing newborns for genetic diseases, diagnoses and implementing optimal treatments. The invention provides for rapid detection of genetic disease in newborns, as well as identification of available therapeutic interventions that may be rapidly implemented to prevent death or adverse complications characterized by the genetic disease."

#### Relevant Overlaps

- Uses whole genome sequencing (WGS) for newborn screening and diagnosis of a comprehensive set of genetic diseases.
- Incorporates extensive variant curation: determining sets of pathogenic and likely pathogenic variants, their population frequencies, and association with inheritance modes.
- Emphasizes identifying positive screening results by comparing sequenced diplotypes with curated variant lists.
- Employs confirmatory testing to distinguish true/false positives and updates databases accordingly.
- Includes integration of clinical phenotyping using natural language processing (CNLP) to extract structured phenotype data from electronic health records (EHR).
- Implements automated, scalable genomic analyses, including structural variants, spanning a broad range of genetic diseases.
- Develops a virtual management guidance system (e.g., GTRxSM) linking genetic diagnoses with treatment recommendations and clinical management information.
- Focuses on rapid turnaround times (reported 13.5-20 hours) to enable early diagnosis and treatment initiation.
- Employs population-scale screening concepts and mentions feedback loop learning to refine variant pathogenicity and frequency datasets.
- Uses Bayesian or probabilistic approaches (e.g., MOON™, GEM™) for combining phenotype and genotype data to generate ranked differential diagnoses.
- Implements informatics architectures suitable for high-throughput data management and iteration.

#### Key Differences

- The patent primarily focuses on **screening and identifying specific pathogenic or likely pathogenic variants** with follow-up confirmatory testing and reporting, rather than explicitly modeling **prior probabilities of observing pathogenic variants genome-wide** conditioned on Hardy-Weinberg Equilibrium or integrating false negative probabilities to estimate credible intervals for diagnosis certainty.
- Although Bayesian models and AI-based variant prioritization are mentioned, the approach focuses more on variant filtering, identification, and reporting rather than calculating a **genome-wide prior and posterior probability that a patient truly harbors disease-causing variants** incorporating observed true positives and false negatives explicitly in a probabilistic diagnostic certainty framework.
- CNLP use is for phenome extraction to support variant interpretation; the disclosed methods do not emphasize probabilistic quantification of variant-observation likelihood based on population genetics theory.
- The system supports diagnosis and management guidance but does not detail credible intervals or uncertainty quantification on the completeness or confidence of a genetic diagnosis.
- Database and informatics innovations include sparse data management, but the patent's solution to the n+1 problem is focused on system architecture rather than probabilistic modeling of variant observation.
- Variant pathogenicity assertions are updated based on confirmatory testing feedback but do not explicitly integrate missing observations or false negative probabilities into the Bayesian diagnostic framework described by Quant.
- Unlike Quant, which uniquely quantifies **confidence of a complete genetic diagnosis** genome-wide rather than just classifying or scoring variants, the patent workflows appear predominantly focused on detection, reporting, and management of identified pathogenic variants.
- The patent’s coverage is broad with many genomic and informatics details, but no direct mention of true positive (TP), false negative (FN), true negative (TN), or false positive (FP) modeling to generate Bayesian posterior probabilities of disease causality or diagnosis completeness.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although the patent addresses newborn whole genome sequencing, variant curation, screening at population scale, integration of clinical phenotyping, and rapid diagnosis with treatment guidance—which are thematically related technologies—its disclosed methods do not embody the key novel theoretical concepts unique to Quant. Namely, Quant’s distinctive approach lies in the genome-wide calculation of prior probabilities under population genetics assumptions, explicit modeling of false negatives and positives, and Bayesian derivation of posterior credible intervals quantifying confidence that the patient harbors a disease-causing variant constituting a complete genetic diagnosis. This patent does not appear to claim or describe the core probabilistic framework of integrating genome-wide prior probabilities with observed/missing variant data using TP/FN etc to yield diagnostic confidence intervals. Thus, it does not block Quant’s fundamental method.

---

# Summary

The patent EP4381510A1 describes comprehensive methods for newborn screening, diagnosis, and management guidance by whole genome sequencing with extensive variant curation, phenotypic data extraction, and scalable informatics. However, it lacks the critical technical elements of Quant’s approach that integrate:
- genome-wide prior probability calculations of variant observation under Hardy-Weinberg Equilibrium,
- explicit incorporation of false negatives and false positives,
- derivation of Bayesian posteriors representing the probability of a complete genetic diagnosis,
- provision of credible intervals reflecting diagnostic certainty.

Accordingly, this patent presents overlapping domain technology but does not claim or teach the core probabilistic and statistical modeling innovation embodied by Quant.
