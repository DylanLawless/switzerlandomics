## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for detecting cellular pathway dysregulation in cancer specimens
- **Publication No.:** US20210057042A1
- **Publication Date:** 2021-02-25
- **Link:** https://patents.google.com/patent/US20210057042A1/en

#### Abstract (excerpt)

> "Disclosed herein are systems, methods, and compositions useful for determining cellular pathway disruption comprising the use of RNA expression level information. This determined level of disruption can assist in the identification of genetic variants that alter pathway activity, to correlate these variants with disease state and disease progression, and to identify those therapeutics most likely to be effective and which should be avoided."

#### Relevant Overlaps

- Uses RNA transcriptome data to detect cellular pathway dysregulation.
- Incorporates machine learning models (e.g., logistic regression, elastic net models) trained on transcriptome data from positive controls (pathogenic variant carriers) and negative controls (wild type samples).
- The models generate pathway disruption scores indicating the likelihood of pathway dysregulation.
- Pathways are subdivided into modules (gene groups), and disruption is assessed at the module level.
- Generates Bayesian-type posterior probabilities or pathway disruption scores reflecting the confidence of dysregulation.
- Provides pathway disruption reports including quantitative pathway activity scores, credible intervals (uncertainty ranges), and matched therapies or clinical trials.
- Incorporates integration of prior knowledge (known variant pathogenicity) with observed RNA data.
- Methodology includes addressing false negatives by integrating variant and transcriptomic evidence.
- Uses differential gene expression (DEG) analysis to select features (genes) for training models.
- Calculates pathway scores across full genome-wide gene sets, extending beyond canonical variant scoring.
- Addresses variants of unknown significance (VUS) via meta-pathway analyses and Bayesian-inspired approaches comparing disrupted vs wild-type reference distributions.
- Models multiple inheritance modes and gene–pathway relationships.
- Incorporates standard public databases such as TCGA, gnomAD for variant classification in training.

#### Key Differences

- This patent focuses largely on detecting dysregulated cellular pathways from RNA expression data and associating such disruption with pathogenic variants. The emphasis is on identifying disrupted pathways to guide therapy decisions.
- It does not describe the theory or specific methods of integrating prior probabilities of observing pathogenic variants under Hardy-Weinberg equilibrium with observed true positive and false negative variant calls in individual genomes, nor does it compute credible intervals reflecting uncertainty in a genetic diagnosis probability.
- There is no description of modeling false negative probabilities at the variant detection level or combining such probabilities with prior variant pathogenicity probabilities into a Bayesian posterior probability that the patient carries a disease-causing variant.
- The approach is transcriptome-centric, whereas Quant’s uniqueness lies in genome-wide variant probabilistic modeling integrating variant detection sensitivity and prior expectations genome-wide.
- Patent's machine learning is applied to transcriptomic signatures to infer pathway disruption, whereas Quant uses Bayesian modeling at variant and gene levels to estimate diagnosis confidence from genetic variant data.
- The notion of producing posterior probabilities of genetic diagnosis integrating population frequencies and variant calls (including missing variants) is not taught here.
- Although Bayesian networks and related models are mentioned as possible machine learning methods, the patent does not describe modeling with true positives, false positives, false negatives, and true negatives integrating variant detection uncertainty in the manner of Quant.
- The patent covers multi-omic data integration and clinical correlates but does not claim the key innovation of computing genome-wide prior probabilities of pathogenic variant occurrences under Hardy-Weinberg equilibrium.

#### Conclusion

Not blocking for Quant.

**Rationale:** While this patent describes methods to predict cellular pathway dysregulation from RNA expression and link it to pathogenic DNA variants, it does not teach or claim the core Quant innovation of combining genome-wide prior probabilities of variant pathogenicity under Hardy-Weinberg equilibrium with observed and potentially missing variant data (explicitly modeling false negative probabilities) to compute a Bayesian posterior probability of a complete genetic diagnosis, including credible intervals for diagnostic confidence. The analytic theory and intent differ fundamentally: this patent focuses on transcriptome-based pathway disruption scores for therapy guidance, not on probabilistic genome-wide inference of disease-causing variants integrating variant detection uncertainty. Thus, despite some superficial similarity in terms of using transcriptome data and pathways, the technical foundations and claims of this patent do not pose a freedom-to-operate issue for Quant’s unique variant probability platform.
