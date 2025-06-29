## Patent/Publication Analysis

### Reference #1

- **Title:** Method and apparatus for classification and/or prioritization of genetic variants
- **Publication No.:** WO2022123067A2
- **Publication Date:** 2022-11-24
- **Link:** https://patents.google.com/patent/WO2022123067A2/en

#### Abstract (excerpt)

> "A method of classifying a genetic variant comprising receiving, at a first plurality of trained nodes of a hierarchical Bayesian Network, input data comprising data of a genetic variant of a patient... providing by the one or more nodes a posterior probability of a functional disruption the genetic variant causes and classifying the genetic variant using said posterior probability of the functional disruption caused by the genetic variant. The first plurality of nodes... represent a constraint of a genetic region to variation and the second plurality of nodes... represent molecular consequences of a genetic variant."

#### Relevant Overlaps

- Use of hierarchical Bayesian networks for classifying genetic variants.
- Calculation of posterior probabilities to represent the likelihood that a variant causes functional disruption.
- Integration of multiple types of data (genetic constraint, molecular consequences, variant annotations).
- Incorporation of experimental data such as Multiplex Assays of Variant Effects (MAVEs) into variant classification.
- Use of Bayesian networks not only for variant classification but also prioritization combining genotype and phenotype data.
- Modeling complex causal dependencies and propagating probabilities through network nodes.
- Quantification of confidence scores alongside posterior probabilities.
- Dimensionality reduction and computational geometry methods to summarize genotype and phenotype features into signatures for variant prioritization.
- Use of a cybernetic loop with biological experimentation feeding model training, enhancing classifier performance.
- Explicit mention of processing population genetic features and clinical phenotype features jointly.

#### Key Differences

- The patent focuses on classification and prioritization of **individual genetic variants** and their disease relevance, outputting posterior probabilities of pathogenicity and likelihood of specific genetic diseases based on genotype-phenotype correlations.
- Quant’s novelty rests on calculating **genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg Equilibrium**, and integrating these priors with observed and missing variant data at the patient level to generate **posterior probabilities of a complete genetic diagnosis**, explicitly modeling false negatives and providing credible intervals on diagnostic certainty.
- The patent’s Bayesian networks emphasize prediction of **variant-level pathogenicity** and prioritization for diagnosis, whereas Quant’s method uniquely quantifies the **confidence of a full genetic diagnosis considering TP, FP, FN, and TN outcomes** in a genome-wide context.
- The patent includes training with biological experimental data but does not specifically describe integrating prior probabilities of pathogenic variant observation at the gene/genome level or explicitly modeling false negative probabilities for missing variants.
- The variant prioritization in the patent relies on signature extraction and probabilistic association between genotype and phenotype, but does not describe combinatorial Bayesian modeling of observed and unobserved variant states to assess diagnostic confidence genome-wide.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
The patent broadly covers hierarchical Bayesian networks for variant classification and prioritization using posterior probabilities, molecular and biological data, and incorporation of phenotype data. While it does not disclose the explicit integration of prior probabilities of variant occurrence under Hardy-Weinberg Equilibrium or incorporating missing/unobserved variant data (false negatives) to estimate genome-wide diagnostic probability with credible intervals as in Quant, the conceptual approach using Bayesian probabilistic frameworks and variant-level pathogenicity posterior probabilities shows significant technical similarity. Quant’s unique clinical diagnostic confidence modeling may not be expressly claimed, but the proximity of Bayesian hierarchical modeling to variant pathogenicity and prioritization suggests at least some potential blocking scope requiring legal assessment.
