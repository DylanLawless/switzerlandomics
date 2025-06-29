## Patent/Publication Analysis

### Reference #1

- **Title:** High-resolution and non-invasive fetal sequencing  
- **Publication No.:** AU2023336046A1  
- **Publication Date:** 2023-05-25  
- **Link:** [https://patents.google.com/patent/AU2023336046A1/en](https://patents.google.com/patent/AU2023336046A1/en)

#### Abstract (excerpt)

> "Provided herein are computer-implemented methods for assigning maternal or fetal origin to one or more genetic variants in cell free DNA (cfDNA) from a sample from a pregnant mammal, preferably a pregnant human, using a probabilistic model for assigning maternal or fetal origin to genetic variants in DNA from a sample obtained from a pregnant mammal, wherein the model assigns maternal or fetal origin based on a combination of fetal fraction and DNA fragment size."

#### Relevant Overlaps

- Use of a probabilistic Bayesian Gaussian Mixture Model to assign fetal versus maternal origin to variants based on variant allele fraction (VAF) and fragment size rank sum statistics.
- Simultaneous estimation of fetal fraction as a latent variable within the mixture model.
- Handling of true positive and false positive variant calls via random forest filtering prior to probabilistic genotyping.
- Incorporation of unique molecular identifiers (UMIs) for generating consensus reads to reduce errors.
- Variant-level probabilistic assignment to maternal or fetal genotype clusters based on observed allele fraction distributions.
- Utilization of VAF distributions and fragment size statistics as key inputs to probabilistic inference.
- Inclusion of clinical interpretation by annotating variants against pathogenicity databases and recommending follow-up testing.

#### Key Differences

- The patent focuses on non-invasive prenatal sequencing (NIPS) from maternal plasma cfDNA, aiming to deconvolve maternal vs. fetal origins of variants within mixed cfDNA samples for fetal diagnosis.
- Quant’s novelty is the genome-wide prior probability estimation of disease-causing variants per gene and integration of observed/missing variant data to compute a posterior probability of a genetic diagnosis with credible intervals.
- This patent does not explicitly address calculating prior probabilities of variant pathogenicity or genome-wide disease risk estimation incorporating Hardy-Weinberg equilibrium.
- Quant’s unique Bayesian framework integrates prior probabilities with observed true positive and false negative probabilities to quantify diagnostic confidence, rather than focusing purely on classification or origin assignment of variants in cfDNA.
- No explicit use or modeling of false negatives or confidence intervals for the completeness of diagnosis is described.
- The invention primarily uses clustering of VAF and fragment size data to assign variant origin and genotype in a mixed sample, rather than quantifying the overall probability that a patient carries a disease-causing variant.
- The patent’s aims target variant origin detection in a mixed maternal-fetal sample, whereas Quant aims at variant pathogenic likelihood and diagnostic certainty at a genome or gene level.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although both use Bayesian mixture models involving variant allele fractions and incorporate fragment size and sequencing features, this patent is focused on determining fetal versus maternal origin of variants in cfDNA samples from pregnant women, utilizing fetal fraction estimation within the model. In contrast, Quant uniquely calculates genome-wide prior probabilities of disease-causing variants and integrates observed and potential false negative variants to produce Bayesian posterior probabilities of a complete genetic diagnosis with credible intervals. The conceptual and technical goals differ substantially, as do the modeling objectives and outputs. There is no evidence that this patent claims or contemplates the kind of genome-wide diagnostic certainty quantification that is central to Quant’s novelty.
