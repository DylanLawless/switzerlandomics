## Patent/Publication Analysis

### Reference #1

- **Title:** Methods, systems and apparatus for identifying pathogenic gene variants  
- **Publication No.:** WO2018042185A1  
- **Publication Date:** 2018-03-01 (priority date from publication, exact may vary)  
- **Link:** https://patents.google.com/patent/WO2018042185A1/en

#### Abstract (excerpt)

> "A system for assessing the pathogenicity of a genetic variant, comprises a data analysis server connected to at least one of a genetic information data source storing frequency information relating to frequency of at least one genetic variant in at least a control population, a disease-variation association data source storing information on associations between at least one gene variant... with diseases; and a protein-related data source storing information on the known or predicted effects of at least one genetic variant on a gene product... configured to receive information from a user about a genetic variant... to determine and transmit a pathogenicity score to the user device."

#### Relevant Overlaps

- Uses population variant frequency data from control databases (e.g., ExAC/gnomAD equivalent) to assess variant rarity.
- Employs calculation of a maximum credible allele frequency (mpaf) based on disease prevalence, maximum allelic contribution to disease, and penetrance (Eq.1), thereby linking allele frequency to disease-specific genetic architecture.
- Applies statistical modeling via Poisson distribution to estimate a maximum tolerated allele count in reference datasets at given confidence levels (90%, 95%, 99%), interpreting sampling variance.
- Uses disease-variant association databases (e.g., ClinVar, HGMD-like) and protein-related data sources predicting variant functional consequences to form evidence for pathogenicity.
- Implements a rule-based scoring system that integrates multiple lines of evidence (variant frequency, functional effect, disease associations), classifying variants into categories (Pathogenic, Likely Pathogenic, VUS, etc.) following ACMG-like guidelines.
- Incorporates location-based “regional effect” consideration — variants in constrained exons or functional hotspots receive differential weighting.
- Employs interpretation rules weighing evidence of pathogenicity and benignity, optionally with weighting schemes assigned to evidence types.
- Supports user input/modification of evidence (clinical/family data) to refine pathogenicity assessments.
- Uses protein effect predictions from multiple computational tools (e.g., SIFT, PolyPhen) aggregated for pathogenicity support.
- Uses disease-specific parameters for max allelic/genetic contribution and penetrance to tailor frequency thresholds.
- Address both dominant and recessive inheritance modes with respective allele frequency calculations.

#### Key Differences

- Although the patent uses statistical thresholds for allele frequencies and applies Bayesian-like probabilistic reasoning (Poisson confidence intervals), it does **not** explicitly mention integrating observed and unobserved variant data from a patient sample (TP/FN/FP/TN framework).
- The invention focuses on evidence rule evaluation for individual variant pathogenicity classification; it does not appear to aggregate variant-level probabilities genome-wide into a **gene-level prior probability**, nor does it produce a comprehensive Bayesian **posterior probability of a complete genetic diagnosis** accounting for false negatives or missing variants.
- No explicit modeling or quantification of false negative probabilities regarding sequencing coverage or missing variant detection is disclosed.
- The method focuses mainly on scoring individual variants rather than producing **credible intervals reflecting diagnostic certainty** for presence or absence of disease-causing variation at the patient or gene set level.
- The patent’s method is aligned closely with ACMG guidelines for variant classification but does not describe a genome-wide framework that integrates prior probabilities with observed data for inference on the overall diagnostic certainty.
- Does not explicitly incorporate inheritance mode impacts into a probabilistic model that outputs genome-wide prior probabilities as a key deliverable.
- No mention of posterior probabilities integrating unobserved/missing data, credible intervals around diagnosis certainty, or full Bayesian frameworks combining priors with personal genomic data beyond variant frequency and pathogenicity scores.

#### Conclusion

**Not blocking for Quant.**

- The patent is directed to a variant pathogenicity scoring/classification system grounded on population allele frequencies, variant functional consequence predictions, and disease association data, with a rule-based evidence combination approach inspired by ACMG.
- It lacks the key innovations of Quant—namely, a scalable genome-wide Bayesian modeling framework that calculates prior probabilities per gene integrating population and inheritance mode data, combines those with observed/missing patient variants to yield a posterior probability of a complete genetic diagnosis, and explicitly accounts for false negative probabilities producing credible intervals of diagnostic certainty.
- While both use Bayesian statistics in a general sense (e.g., Poisson modeling for frequency thresholds), the patent’s approach focuses on pathogenicity classification of variants rather than Quant’s unique comprehensive genome-wide probabilistic diagnostic confidence estimation.
- The patent does not use a formal TP/FN/FP/TN framework or provide a posterior probability that the patient harbors a causal variant accounting for missing or unobserved variants, differentiating it clearly from Quant’s core methodology.
- Therefore, despite overlap in data sources (gnomAD/ExAC, ClinVar, protein predictions) and general use of frequency filtering and scoring, this patent does not block Quant’s unique scope or method.

---

# Summary

This patent discloses a system for classifying pathogenicity of genetic variants based on frequency and functional data using rule-based evidence scoring aligned with ACMG guidelines, incorporating disease prevalence and penetrance to define frequency thresholds. However, it does not disclose or claim Quant’s key innovations of: genome-wide disease-causing variant prior probability estimation, integrating observed and missing patient data in a Bayesian posterior diagnosis probability, modeling false negatives explicitly, or generating credible intervals of diagnostic certainty. Hence, it is not blocking for Quant.
