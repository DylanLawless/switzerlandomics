## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for predicting variant pathogenicity based on amino acid signal-to-noise ratios
- **Publication No.:** WO2025010357A2
- **Publication Date:** 2025-02-06 (publication date on Google Patents; not explicitly stated but typical for application; provisional priority 2023-07-03)
- **Link:** https://patents.google.com/patent/WO2025010357A2/en

#### Abstract (excerpt)

> "Tools and related methods for analyzing the pathogenicity of gene variants are provided, the analysis being based on signal-to-noise ratios of the amino acids for the gene. The tools allow a user to input a gene, along with an amino acid position, and then the tool outputs information related to the susceptibility to a particular disease... The result is a tool, and related methodologies, that more accurately predict the true susceptibility for a patient to have or eventually get a particular disease than current tools, that tend to over-estimate the likelihood of having or getting such disease."

#### Relevant Overlaps

- Both Quant and the disclosed patented technology utilize public variant data such as ClinVar and population allele frequencies (e.g., gnomAD) to evaluate variant pathogenicity.
- The patented method calculates "signal-to-noise" (S:N) ratios at the amino acid position level by comparing disease cohort variant frequencies to control frequencies to identify pathogenic "hotspots."
- The patent focuses on amino acid-level granularity and defines statistical mutation hotspots that predict pathogenicity.
- Incorporates a graphical user interface where users input gene and amino acid position to obtain S:N ratios and disease susceptibility determinations.
- Uses machine learning and artificial intelligence models to generate predictions and population-level risk estimates based on input gene-amino acid combinations.
- Incorporates disease-specific thresholds for S:N ratios, mapping functional domains and enabling variant classification improvements consistent with ACMG PM1 criteria (hotspot criterion).
- Emphasis on predicting the relative risk or disease susceptibility for gene variants, including variants of uncertain significance (VUS), via refined hotspot analysis.
- The tool provides outputs including a disease susceptibility determination that reflects variant localization within these hotspots.
- Web-based tool and system architecture for variant input, processing, and output display.

#### Key Differences

- The patent does NOT describe or claim integration of prior probabilities for genes or variants under Hardy-Weinberg Equilibrium to generate genome-wide prior probabilities—as is core to Quant.
- Does not explicitly model or quantify different outcomes of genetic testing such as True Positives, False Negatives, False Positives, or True Negatives in a Bayesian framework to derive a posterior probability of a patient carrying a disease-causing variant.
- Focused on relative risk assessment or pathogenic hotspot identification at the amino acid level; does not assess diagnostic certainty or credible intervals reflecting confidence in a complete genetic diagnosis.
- The method is limited to improving pathogenicity prediction and variant interpretation based on observed variant frequencies and functional annotations, not integrating observed and missing data for diagnosis confidence.
- Although it applies AI/machine learning, their models appear targeted at reclassifying variants (e.g., VUS) and refining a pathogenicity hotspot signal-to-noise score rather than calculating patient-level diagnostic posterior probabilities.
- The patent primarily targets certain cardiac genes and related diseases; Quant is genome-wide and considers all inheritance modes.
- The approach is essentially a variant interpretation aid that complements ACMG criteria but does not implement Bayesian integration of prior probabilities with variant detection outcomes for diagnostic confidence.

#### Conclusion

Not blocking for Quant.

---

### Explanation

The patent centers on computing amino acid-level signal-to-noise ratios from disease cohorts versus population data to identify hotspots enriching for pathogenic variants. It enables variant pathogenicity prediction and refinement of clinical variant interpretation, particularly for cardiac genes.

Quant’s distinguishing innovation is the Bayesian framework integrating prior probabilities for variant observation (under Hardy-Weinberg Equilibrium and inheritance mode) with patient-specific observed or missing variant data accounting explicitly for false negative probabilities, enabling calculation of a posterior probability of a genetic diagnosis with credible intervals.

The patent does not teach or claim:

- Aggregating genome-wide variant prior probabilities into gene-level prior disease probabilities.
- Bayesian modeling of variant observation including TP, FN, FP, TN outcomes to estimate diagnostic certainty.
- Calculating posterior probabilities of carrying a disease-causing variant accounting for unobserved data.
- Providing credible intervals for confidence in a complete genetic diagnosis.

Because the patent focuses on improving variant classification and hotspot identification using S:N ratios and AI to predict disease association at the variant level, without embodying Quant’s Bayesian posterior diagnostic framework integrating TP and FN explicitly, it does not block Quant’s method.

---

# Summary

| Aspect                                         | Quant                                                | WO2025010357A2 Patent                               |
|------------------------------------------------|-----------------------------------------------------|----------------------------------------------------|
| Use of public variant databases                 | Yes (gnomAD, ClinVar)                               | Yes (gnomAD, ClinVar)                              |
| Variant-level pathogenicity classification       | Indirect, via priors; focuses on probabilistic risk | Direct hotspot S:N ratio-based pathogenicity calls |
| Genome-wide prior probability calculation        | Yes, under Hardy-Weinberg Equilibrium                | No                                                  |
| Incorporation of observed/missing variant data     | Yes, explicitly models TP, FP, FN, TN for diagnosis | No explicit modeling of variant observation outcomes |
| Bayesian posterior probability of diagnosis       | Yes, with credible intervals                          | No                                                  |
| AI/machine learning usage                           | Used for variant pathogenicity prediction within Bayesian framework | Used for S:N refinement and population predictions  |
| Application scope                                 | Genome-wide, all inheritance modes                   | Cardiac genes, specified diseases                   |
| Focus                                             | Confidence in diagnosis from genetic data             | Pathogenic variant hotspot identification            |
| User interface                                     | Variant/gene probability outputs                      | Gene + amino acid input leading to S:N ratio and risk outputs |
| Conclusion                                        | Novel Bayesian posterior diagnostic quantification  | Variant classification through S:N ratios only     |

---

**Overall, this patent is not blocking because it lacks Quant’s integration of TP, FN, and Bayesian posterior probability calculations for diagnostic confidence and focuses instead on amino acid-level pathogenic hotspot prediction and variant classification based on S:N ratios.**
