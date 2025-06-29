## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for determining effects of therapies and genetic variation on polyadenylation site selection  
- **Publication No.:** US11322225B2  
- **Publication Date:** 2022-04-19  
- **Link:** https://patents.google.com/patent/US11322225B2/en

#### Abstract (excerpt)

> "The present disclosure provides systems and methods for determining effects of genetic variants on selection of polyadenylation sites (PAS) during polyadenylation processes. In an aspect, the present disclosure provides a polyadenylation code, a computational model that can predict alternative polyadenylation patterns from transcript sequences. A score can be calculated that describes or corresponds to the strength of a PAS, or the efficiency in which it is recognized by the 3′-end processing machinery. ... The model can predict the consequence of nucleotide substitutions on PAS strength, which can be used to prioritize genetic variants that affect polyadenylation."

#### Relevant Overlaps

- Use of machine learning algorithms (e.g., convolutional neural networks) to model genomic sequence features.
- Calculation of a quantitative score representing variant or site “strength” or preference, specifically relating to polyadenylation site (PAS) selection.
- Modeling effects of genetic variation (including SNVs and indels) on selection preferences among candidate sites.
- Use of Bayesian inference elements in modeling relative abundances of alternative sites (e.g., Beta distributions for relative PAS usage).
- Prediction involves computing probabilities (preferences p_i) across a set of candidate polyadenylation sites, normalized via softmax-like functions.
- Integration of genomic sequence features (e.g., local nucleotide sequences encoded as 1-of-4 binary vectors) into machine learning models.
- The model outputs probabilities of site selection and can predict the effect of genetic variants and therapeutic interventions (antisense oligonucleotides) on variant selection.
- Consideration of positional effects (distance between competing sites) as a factor influencing site preference.
- Generation of outputs related to predicted usage probabilities and relative changes upon variant or therapeutic perturbation.

#### Key Differences

- The patent focuses on modeling polyadenylation site selection from transcript/genomic sequences and predicting relative site usage/preferences.
- Quant’s core method calculates genome-wide **prior probabilities of observing pathogenic variants** in genes under Hardy-Weinberg equilibrium, integrating these priors with observed/missing patient variant data to compute **posterior probabilities of a complete genetic diagnosis**.
- This patent does **not** address estimating the probability that a patient harbors a disease-causing variant, nor the explicit modeling of false negatives, true/false positives/negatives, or diagnostic credible intervals.
- The subject matter is fundamentally about predicting molecular processing site selection (polyadenylation) rather than quantifying the confidence in variant pathogenicity or diagnosis certainty.
- Although Bayesian inference is used in polyadenylation site preference estimation, it is for competing PAS usage modeling, not for quantifying diagnostic certainty of genetic disease.
- The patent’s domain is RNA processing and transcript isoform determination, whereas Quant’s domain is genome-wide variant pathogenicity likelihood and clinical diagnostic certainty.
- No mention or suggestion of integrating observed/missing variant calls at the patient level to compute Bayesian posteriors of genetic disease causation.
- Uses machine learning on sequence features for polyadenylation biology rather than a framework for genome-wide variant prioritization and diagnosis confidence.

#### Conclusion

Not blocking for Quant.

The patent discloses a method for modeling polyadenylation site preferences and effects of variants or therapeutic oligonucleotides on these sites. While it uses machine learning and probability computations, it does not overlap with Quant’s core innovation of integrating prior probabilities under population genetics models with observed/missing patient variant data to compute Bayesian posterior probabilities of a genetic diagnosis accounting for sensitivity/specificity (TP, FP, FN, TN) and credible intervals. The patent’s focus on polyadenylation site strength and relative PAS usage prediction is conceptually and operationally distinct from Quant’s genome-wide genetic diagnostic certainty modeling. Hence, it does not pose a Freedom-to-Operate risk for Quant.
