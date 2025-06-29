## Patent/Publication Analysis

### Reference #1

- **Title:** Device, system and method for assessing risk of variant-specific gene dysfunction
- **Publication No.:** EP3286677A1
- **Publication Date:** 2018-06-13
- **Link:** https://patents.google.com/patent/EP3286677A1/en

#### Abstract (excerpt)

> "A device, system and method for predicting gene-dysfunction caused by a genetic mutation in the genome of an organism. A neural network may comprise multiple nodes respectively associated with multiple different gene-dysfunction metrics and multiple different confidence weights. The neural network may combine the multiple gene-dysfunction metrics according to the respective associated confidence weights to generate one or more likelihoods that a genetic mutation causes gene-dysfunction in organisms."

#### Relevant Overlaps

- Use of a neural network combining multiple gene dysfunction components (metrics) weighted by confidence scores to estimate the likelihood that a variant causes gene dysfunction.
- Incorporation of multiple gene-dysfunction metric categories, including population selection (homozygous effect, heterozygous effect, dominant effect), evolutionary selection (phylogenetic conservation), mutation class (mutation type), pathogenic predictors (such as PolyPhen-2, CADD, PROVEAN, VEST), and clinical classification.
- Population-specific modeling of variant frequencies and selection pressures.
- Use of evolutionary conservation and phylogenetic modeling to estimate variant deleteriousness.
- Continuous scoring output reflecting likelihood of gene dysfunction rather than binary pathogenic/benign predictions.
- Modeling of homozygous and heterozygous variant counts to assess recessive/dominant effects on disease risk.
- Simulation of virtual progeny by combining parental haplotypes for pre-conception screening.
- Training phase optimizing the neural network to distinguish known pathogenic, benign, and uncharacterized variants via cost function minimization, including bootstrap thresholds defining pathogenicity cutoffs.
- Use of weighted aggregation and logistic transformations of predictive scores from established pathogenicity predictors.
- Outputs include variant- and gene-level dysfunction likelihoods and credible intervals.

#### Key Differences

- The patent focuses mainly on predicting the likelihood that *individual variants* cause **gene dysfunction** or disease, using a composite score from variant-level metrics and population/evolutionary data.
- The method does **not explicitly describe integration of patient-specific *observed vs. unobserved* variant data from a clinical genome** to derive a **posterior probability of a complete genetic diagnosis**, accounting for false negatives, which is central to Quant.
- Quant uniquely models the **Bayesian posterior probability that a patient truly harbors a disease-causing variant**, integrating prior gene-level probabilities under Hardy-Weinberg equilibrium with patient-level variant calls, including possible false negatives (missing data).
- The patent uses multiple data sources with a neural network to predict variant pathogenicity likelihood as a continuous score, but does not explicitly describe combining prior probabilities and patient evidence into a formal Bayesian framework to quantify diagnostic certainty with credible intervals.
- Quant’s core innovation centers on genome-wide **prior probabilities of observing pathogenic variants**, mathematical integration of these priors with **patient-specific observed and missing data (TP, FP, TN, FN)**, and **computing diagnostic confidence intervals**.
- The patent’s emphasis is on variant-centric gene dysfunction scoring and pre-conception carrier screening through simulation of progeny genetics, rather than full genome-wide **diagnostic certainty metrics** from patient data.
- While the patent discusses simulation of virtual progeny for risk prediction, it lacks details about posterior probability modeling of patient diagnoses incorporating integration of observed vs. missing variant data.
- The patent’s method applies a neural network for combining variant dysfunction metrics but does not appear to specifically model or output a Bayesian posterior probability reflecting diagnostic confidence accounting for unobserved variants.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
This patent describes a sophisticated system employing a neural network that integrates multiple gene dysfunction metrics, including population genetics, evolutionary conservation, pathogenicity predictors, and clinical classifications, to generate a continuous likelihood score for variant-specific gene dysfunction. This approach overlaps conceptually with aspects of Quant’s use of multiple data types for variant/disease prediction. However, Quant’s innovation lies significantly beyond variant dysfunction scoring, in its formal Bayesian integration of genome-wide prior probabilities with patient-specific observed and missing variant data to compute posterior probabilities of complete genetic diagnosis and convey credible intervals of diagnostic certainty — a unique clinical diagnostic certainty modeling not explicitly claimed here.

Because the patent’s core approach resembles variant-level gene dysfunction prediction combining population and evolutionary metrics with machine learning, and since Quant’s method relates closely to integrating prior variant observation probabilities under population genetics with patient genomic data, this may present FTO concerns. However, the described Bayesian posterior diagnostic confidence modeling incorporating false negative probabilities and clinical uncertainty is not expressly disclosed here, providing a technical distinction.

Given this very close resemblance to the combined use of population metrics and machine-learned integration of variant predictors, but lack of explicit account for patient observed/missing data and formal Bayesian diagnosis probability, the patent **represents potential overlap** with Quant’s technology and hence merits careful legal review.

---

*No other patents or publications were provided for analysis.*
