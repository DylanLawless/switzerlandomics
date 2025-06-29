## Patent/Publication Analysis

### Reference #1

- **Title:** Method and apparatus for classification and/or prioritization of genetic variants
- **Publication No.:** WO2022123067A2
- **Publication Date:** 2022-12-15
- **Link:** https://patents.google.com/patent/WO2022123067A2/en

#### Abstract (excerpt)

> "A method of classifying a genetic variant comprising receiving, at a first plurality of trained nodes of a hierarchical Bayesian Network, input data comprising data of a genetic variant of a patient, receiving, at a second plurality of trained nodes of the hierarchical Bayesian Network, input data comprising said data, receiving, at one or more trained nodes of the hierarchical Bayesian Network input from the first plurality of trained nodes and from the second plurality of trained nodes, providing by the one or more nodes a posterior probability of a functional disruption the genetic variant causes and classifying the genetic variant using said posterior probability of the functional disruption caused by the genetic variant."

#### Relevant Overlaps

- Use of hierarchical Bayesian Networks for variant classification and prioritization.
- Input data includes patient genetic variant data annotated with various genetic, biological, and clinical features.
- Classification produces a posterior probability for the functional disruption caused by a variant, enabling graded predictions beyond simple binary classification.
- Modeling incorporates constraints of genetic regions and molecular consequences at RNA and protein levels.
- Integrates experimentally derived data such as Multiplex Assays of Variant Effects (MAVEs) for improved predictions.
- Variant prioritization integrates genetic variant data with patient clinical features using Bayesian networks to produce posterior probabilities of diseases given genotype-phenotype combinations.
- Uses dimensionality reduction and computational geometry to generate genotype and phenotype signatures for use in Bayesian models.
- The system quantifies confidence scores and credible intervals for predictions.
- Feedback loop combining biological experimentation (MAVEs) and Bayesian network model training to improve variant classification accuracy.
- Training includes human expert-driven graph modeling to reduce curse of dimensionality.
- Variant classification and prioritization outputs include posterior probabilities and ranked lists of variants or diagnoses.
- Uses public genetic variant databases (e.g., ClinVar) for training.
- Machine learning models are generative Bayesian networks that model causal structures explicitly.

#### Key Differences

- The patent focuses mainly on classifying individual variants and prioritizing variants in the context of clinical phenotypes but does not explicitly describe integration of prior **genome-wide** prior probabilities of observing pathogenic variants according to Hardy-Weinberg Equilibrium across genes and inheritance modes.
- While the patent uses Bayesian networks and produces posterior probabilities, it emphasizes variant-level pathogenicity classification and phenotype-genotype-disease association prioritization rather than quantifying a Bayesian **posterior probability of a complete genetic diagnosis** that explicitly models true positives (TP), false negatives (FN), and false positives (FP) at the patient-level accounting for missing/unobserved variants.
- The invention does not appear to explicitly incorporate modeling of false negative probabilities arising from unsequenced or poorly sequenced regions to estimate diagnostic uncertainty or credible intervals on the diagnosis.
- While the Bayesian approach in the patent handles classification uncertainty and confidence scores, it does not specifically articulate combining prior probabilities of pathogenic variant observations (e.g., population-level priors across all genes) with patient-specific observed and missing variant data to yield a genome-wide diagnostic posterior probability.
- The patent’s approach is focused on hierarchical Bayesian networks for variant classification and phenotype-based prioritization using input features related to variants and clinical features. Quant’s innovation is broader, quantifying disease-causing variant observation probabilities genome-wide integrated with inheritance modes and diagnostic certainty.
- Although both approaches utilize Bayesian methods, the patent employs hierarchical Bayesian networks primarily as classifiers and prioritizers based on annotated variant and phenotype data, whereas Quant’s novelty is in probabilistically quantifying diagnostic confidence with explicit accounting for TP, FN, and FP in patient-level genome-wide analyses.
- The patent discusses training on multiparameter variant data and molecular assays, but does not describe integration with a framework that outputs credible intervals for a **complete genetic diagnosis** incorporating unseen variant probabilities.
- The patent provides architectures and detailed algorithms for variant classification and prioritization but does not describe calculations of prior probabilities under Hardy-Weinberg Equilibrium or inheritance mode modeling to estimate genome-wide variant observation probabilities foundational to Quant.

#### Conclusion

Not blocking for Quant.

**Explanation:**  
Although this patent discloses hierarchical Bayesian networks for variant classification and clinical phenotype-guided variant prioritization producing posterior probabilities and confidence measures, it does not explicitly address the core innovations of Quant: estimating genome-wide prior probabilities of pathogenic variant observations under inheritance modes, integrating these with observed/missing variant data at a patient level to compute a Bayesian posterior probability of a complete genetic diagnosis including false negative rates, and producing credible intervals quantifying diagnostic certainty. The patent focuses on variant-level classification and disease association prioritization without modeling TP, FN, FP outcomes or genome-wide diagnostic probability estimation. Thus, its technical scope and method details do not closely overlap with the key theory or technical steps of Quant.
