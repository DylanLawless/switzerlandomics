## Patent/Publication Analysis

### Reference #1

- **Title:** A method to determine if a circulating fetal cell isolated from a pregnant mother is from either the current or a historical pregnancy
- **Publication No.:** WO2020051542A1 (PCT/US2019/050078)
- **Publication Date:** 2020-03-26
- **Link:** https://patents.google.com/patent/WO2020051542A1/en

#### Abstract (excerpt)

> "Disclosed are methods for determining a genetic origin of fetal cellular DNA obtained from a pregnant female who is carrying a fetus in a current pregnancy... The methods disclosed uses a probabilistic model to determine fetal cellular DNA origin based on alleles observed at informative genetic marker of the fetal cellular DNA."

#### Relevant Overlaps

- Employs a probabilistic Bayesian model to infer the origin of fetal cellular DNA by analyzing genotypes at informative genetic markers.
- Uses sets of informative markers defined by homozygosity in the mother and heterozygosity in the fetus, paralleling Quant’s concept of informative loci.
- Calculates likelihoods of multiple scenarios (same fetus, historical fetus with same father, historical fetus with different father), reflecting a modeling of false positive/negative origins.
- Uses beta-binomial distributions as likelihood functions for the number of matching alleles, incorporating uncertainty parameters (pseudo counts, hyperparameters).
- Integrates genetic evidence (observed shared alleles) with prior probabilities of different origin scenarios to compute posterior probabilities.
- Implements a computer-implemented method and system based on these Bayesian probabilistic computations, analogous to Quant's framework integrating prior probabilities with observed genetic data.
- Outputs posterior probabilities relating to confidence in the origin of genetic variants, akin to Quant’s credible intervals for diagnosis certainty.

#### Key Differences

- The patent focuses specifically on determining the origin of fetal cellular DNA (distinguishing current versus historical pregnancies) using Bayesian probabilistic modeling, primarily in a prenatal diagnostic context.
- It is applied to fetal cells obtained from maternal blood for non-invasive prenatal testing (NIPT), rather than genome-wide variant causality probability across all genes as in Quant.
- The modeling centers on matching genotypes at informative markers to identify fetal origin, rather than calculating genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg equilibrium.
- The probabilistic model addresses the problem of fetal cell origin determination, not the integration of prior population variant frequencies with patient variant observation and false negative assessment for diagnosis confidence.
- The invention does not compute posterior probabilities of a **genetic diagnosis** per se, but probabilities regarding fetal cell origin scenarios.
- Quant’s key innovation of combining prior probabilities of disease-causing variants genome-wide with observed true positives and false negatives to generate diagnostic credible intervals is not described.
- The patent does not explicitly model false negatives or missing variants in the genome nor assess diagnostic uncertainty for rare inherited diseases.
- Overlaps are at the level of Bayesian modeling and integrating observed genetic marker data with hypotheses, but the specific use case, problem addressed, and the statistical framework’s application differ substantively.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While the patent and Quant both employ Bayesian probabilistic modeling that compares allelic data and uses distributions like beta-binomial to calculate likelihoods and posterior probabilities, the patent focuses on determining the origin of fetal cellular DNA in maternal blood relative to current or historical pregnancies. Quant’s core innovation—calculating genome-wide prior probabilities of disease-causing variants and integrating these with observed patient variant data and false negative probabilities to quantify posterior diagnostic certainty—is not present in this patent. The technical overlap is limited to probabilistic modeling and use of allele-sharing probabilities but does not extend to Quant’s unique theory, genome-wide prioritization, inheritance mode modeling, or false negative integration in diagnostic calculation.
