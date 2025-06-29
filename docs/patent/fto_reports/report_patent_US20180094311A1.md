## Patent/Publication Analysis

### Reference #1

- **Title:** Methods, systems and processes of identifying genetic variations
- **Publication No.:** US20180094311A1
- **Publication Date:** 2018-04-05
- **Link:** https://patents.google.com/patent/US20180094311A1/en

#### Abstract (excerpt)

> "Abstract Provided herein are novel methods, systems and processes for generating and analyzing sequence data for the determination of the presence or absence of one or more genetic variations within a genome of a subject."

#### Relevant Overlaps

- The patent describes generating single-end sequence reads from a subject’s entire genome, comprising sequence information for more than 400,000 common polymorphisms, with reads covering less than 5% of the genome and spaced at least 4000 base pairs apart on average.
- It employs determination of presence or absence of heterozygosity (absence of heterozygosity, AOH) at these polymorphisms based on allele balances derived from sequence reads.
- Utilizes statistical models such as Hidden Markov Models (HMM), Viterbi algorithm, maximum likelihood regression, negative binomial models, and Expectation-Maximization to infer AOH and detect copy number variations (CNVs).
- Implements a target-site scoring process for optimal primer design targeting polymorphisms genome-wide.
- The process results in identifying CNVs based on AOH calls for contiguous genome parts.
- The method is computer-implemented, involving mapping of sequence reads, allele balance calculation, and CNV calling.
- The claims focus on determining presence or absence of heterozygosity and CNVs from sparse genome-wide single-end reads using statistical models.
- Both Quant and this patent:
  - Analyze genome-wide data at common polymorphisms.
  - Use allele balance and heterozygosity/absence of heterozygosity information.
  - Employ statistical models (HMMs, likelihood approaches) to interpret data.
  - Work with sparse sequencing (less than 5% genome coverage) and non-overlapping single-end reads.
  - Are designed as computational pipelines or systems for genome analysis.
- The subject matter pertains to genetic diagnosis but is focused on CNV detection via heterozygosity patterns and CNV presence/absence calls.
  
#### Key Differences

- Quant’s unique innovation is the **integration of prior probabilities of pathogenic variants under Hardy-Weinberg equilibrium with observed variant calls**, specifically modeling true positive (TP), false negative (FN), false positive (FP), and true negative (TN) rates to compute a **Bayesian posterior probability of a complete genetic diagnosis**.
- The patent primarily addresses **detecting copy number variations and absence of heterozygosity**, not providing probabilistic quantification of pathogenic variant observation probabilities genome-wide or assessing diagnostic certainty via Bayesian posterior probabilities.
- This patent does not describe modeling inheritance modes or calculating credible intervals for diagnostic confidence.
- Uses statistical models for AOH and CNV detection, but does not integrate those with disease-causing variant priors or probabilistic diagnosis certainty.
- Focused on **copy number variation detection**, not on genome-wide variant pathogenicity probability estimation.
- Does not explicitly describe false negative rate modeling or integrating missing variant data for confidence estimation.
- The statistical analyses center on CNVs via allele balances and heterozygosity states, not on probabilistic variant pathogenicity or diagnosis probability.
- No explicit references to TP, FN, TN, FP integration in a Bayesian framework like Quant.
- The read generation and sequencing focus (single-end, sparse coverage) overlaps with Quant's methodology but the **downstream analytics and goals differ** substantially.

#### Conclusion

Not blocking for Quant.

*Explanation:* While there is a superficial methodological overlap in using sparse single-end reads, allele balances, heterozygosity calls, and statistical models such as HMMs, this patent focuses exclusively on detecting copy number variations by absence of heterozygosity patterns. It lacks the key innovative elements of Quant—namely, integrating population prior probabilities with observed variant data to compute Bayesian posterior probabilities for pathogenic variants and providing credible intervals reflecting diagnostic certainty. Quant’s unique approach to modeling TP, FN, and deriving confidence of a complete genetic diagnosis is not present here. Therefore, this patent is not blocking for Quant.
