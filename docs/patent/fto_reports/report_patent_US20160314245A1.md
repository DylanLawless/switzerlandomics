## Patent/Publication Analysis

### Reference #1

- **Title:** Device, system and method for assessing risk of variant-specific gene dysfunction
- **Publication No.:** US20160314245A1
- **Publication Date:** 2016-11-03
- **Link:** https://patents.google.com/patent/US20160314245A1/en

#### Abstract (excerpt)

> "A device, system and method for predicting gene-dysfunction caused by a genetic mutation in the genome of an organism. A neural network may comprise multiple nodes respectively associated with multiple different gene-dysfunction metrics and multiple different confidence weights. The neural network may combine the multiple gene-dysfunction metrics according to the respective associated confidence weights to generate one or more likelihoods that a genetic mutation causes gene-dysfunction in organisms."

#### Relevant Overlaps

- Use of a neural network combining multiple gene-dysfunction metrics weighted by confidence to generate likelihoods that a specific genetic mutation causes gene dysfunction.
- Integration of population genetic data — measures of homozygosity, heterozygosity, and dominant effect per population — to assess disease risk.
- Use of evolutionary selection factors across species or populations based on allele variation and conservation to generate likelihood of deleterious impact.
- Mutation class components assessing mutation types (e.g., missense, frameshift) weighted by their likely functional impact.
- Pathogenicity predictors integrated into the model (e.g., CADD, PolyPhen-2, PROVEAN, VEST) transformed onto common scales.
- Inclusion of clinical classification, with confidence levels based on curation quality, into the probabilistic assessment.
- Training of the model via cost factor optimization on known pathogenic, benign, and uncharacterized variants.
- Gene-by-gene bootstrapped pathogenic thresholds used to classify variants.
- Output is a continuous variant-specific gene dysfunction (VGD) score or likelihood rather than a discrete label.
- Application to both living and virtual organisms, including simulated mating to predict risk in potential progeny.

#### Key Differences

- The patent employs a machine learning neural network that combines multiple features, including population genetics and evolutionary data, to score variants.
- However, while it integrates observed homozygous and heterozygous counts and clinical data to infer variant pathogenicity likelihoods, it does not explicitly describe a Bayesian model that integrates prior genome-wide variant probabilities with observed and missing data to compute a posterior probability of a full genetic diagnosis.
- The system focuses on variant-specific gene dysfunction scoring, rather than quantifying the confidence or credible interval of a complete genetic diagnosis in a patient by specifically modeling TP, FN, FP, and TN outcomes in a Bayesian framework.
- The approach appears to mainly generate likelihoods of pathogenicity per variant but does not describe aggregation into gene-level or genome-level diagnostic posterior probabilities integrating false negatives or unobserved variants.
- No explicit mention or modeling of false negatives or missing data in diagnostic certainty calculation, a core novelty of Quant.
- No presentation of credible intervals reflecting diagnostic uncertainty of a patient-level genetic diagnosis.
- The patent’s focus is on assessing variant pathogenicity, including population and evolutionary contexts, but does not directly address downstream Bayesian integration of priors with patient-specific observed/missing variant data for diagnosis confidence.

#### Conclusion

**Not blocking for Quant.**

The patent does involve neural network-based calculation of variant pathogenicity likelihoods incorporating population, evolutionary, mutation class, clinical and computational predictors. However, it does not encompass the unique Quant innovations of calculating genome-wide prior probabilities under Hardy-Weinberg equilibrium, explicitly modeling false negatives and unobserved variants, or integrating all such data into a Bayesian posterior probability with credible intervals reflecting confidence of a *complete genetic diagnosis* in an individual. Therefore, while there is technical resemblance in concept, the core Quant theory and method of deriving diagnostic certainty with TP/FN modeling and genome-wide prior integration is not disclosed, avoiding blocking overlap.
