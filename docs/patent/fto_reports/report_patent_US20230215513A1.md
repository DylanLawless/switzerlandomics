## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for detecting tumor mutational burden  
- **Publication No.:** US20230215513A1  
- **Publication Date:** 2023-07-06 (publication date from Google Patents)  
- **Link:** https://patents.google.com/patent/US20230215513A1/en  

#### Abstract (excerpt)

> "A computer-implemented method may obtain variant calling data for the tumor sample. The method may identify, in the variant calling data and in view of at least one population database, a list of germline variants for the tumor sample along each chromosome. The method may identify, in the variant calling data, a list of candidate somatic variants. The method may filter out likely germline variants from the list of candidate somatic variants to retain only likely somatic variants, filtering out the likely germline variants further comprising the steps of estimating a probability of each candidate somatic variant i being a germline variant (“Pgermline(i)”); and determine whether a candidate somatic variant i is germline or somatic, to retain only the likely somatic variants in the list of candidate somatic variants, determining the tumor mutational burden (TMB) value for the tumor sample."

#### Relevant Overlaps

- Uses variant calling data and population databases (e.g., gnomAD) to identify germline vs. somatic variants.
- Applies a Hidden Markov Model (HMM) along chromosomes to estimate the probability that a candidate somatic variant is actually germline (Pgermline(i)).
- Integrates variant allele fractions (VAF) as observed states in the HMM; hidden states correspond to discretized variant fractions.
- Uses transition probabilities (pswitch) in the HMM to model changes along chromosomes.
- Filters variants by thresholding Pgermline(i) to select somatic variants contributing to TMB estimation.
- Method explicitly addresses false positive germline filtering without matched normal samples.
- The HMM model integrates sequencing depth (mean coverage D) into emission probabilities.
- Incorporates insertion of artificial data points in genomic regions with no observed variants to improve model behavior.
- Applies variant-level probabilities along chromosomes to aggregate into a clinically relevant metric (TMB), used for treatment selection.
- Quantifies probabilities of a variant being germline vs. somatic considering population data and allele fractions, implicitly capturing true positive (TP) and false negative (FN) rates for variant calls in tumor-only sequencing context.
- Uses Bayesian statistical modeling (HMM is a Bayesian statistical framework) for probabilistic inference of variant status.

#### Key Differences

- The patent focuses solely on tumor samples to identify somatic mutations for TMB estimation, specifically to guide cancer immunotherapy treatments.
- The method estimates probabilities of individual variants being germline or somatic but does not integrate these into a wider Bayesian framework to quantify the overall confidence in a *complete genetic diagnosis* as in Quant.
- It does not appear to explicitly model or integrate false negative calls for variants that *may be missing* from observed data (e.g., unsequenced or poorly covered regions) to produce a credible interval for diagnostic certainty.
- The patent addresses classification of somatic vs. germline variants primarily for TMB calculation, not genome-wide prior probabilities of disease-causing variation or integrating inheritance modes across all genes.
- Quant’s core innovation is to compute genome-wide prior probabilities of observing pathogenic variants per gene, merge these with patient-specific observed/missing variant data, and produce a posterior probability and credible intervals for a complete diagnosis — features not claimed here.
- This patent's method employs an HMM on variant allele fractions of candidate somatic variants for refining germline filtering but does not describe the statistical aggregation across variants and genes into posterior probabilities about disease causality as a diagnostic confidence.
- Does not mention integration of modes of inheritance or the specific concept of true positives (TP) and false negatives (FN) for *genetic diagnosis* probability computation.
- Focus on cancer somatic variant identification (tumor vs. germline) differs substantially from germline variant pathogenicity and diagnosis confidence modeling in Quant.

#### Conclusion

Not blocking for Quant.

---

### Summary

While both Quant and US20230215513A1 employ Bayesian or probabilistic models to distinguish variant types using allele fraction data and population databases, the patent’s focus is limited to tumor-only variant filtering for somatic mutation identification and TMB estimation. It does not extend to genome-wide prior and posterior probability calculations incorporating false negatives to quantify the confidence of a *complete genetic diagnosis* across genes and inheritance modes, which is the unique innovation of Quant.

Hence, there is some technical similarity in the use of probabilistic/statistical filtering (HMM for variant classification incorporating variant allele fractions and population data). However, this similarity does not extend to the core novel theory and application of Quant focused on genetic diagnostic certainty via Bayesian posterior probabilities integrating TP/FN concepts at the diagnosis level rather than variant classification for TMB.

No blocking infringement risk with respect to Quant’s unique method and claims.
