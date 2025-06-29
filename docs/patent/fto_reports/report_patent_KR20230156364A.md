## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and related aspects for analyzing molecular reactions
- **Publication No.:** KR20230156364A
- **Publication Date:** 2023-03-21
- **Link:** https://patents.google.com/patent/KR20230156364A/en

#### Abstract (excerpt)

> "Methods for determining molecular response scores are provided herein. Molecular response scores can be used to monitor and guide the administration of treatment to a subject."

#### Relevant Overlaps

- Both this patent and Quant focus on analyzing mutant allele fractions (MAF) over multiple time points (pre- and post-therapy) to assess molecular response, thus related to tracking disease burden changes in cancer.
- Uses Bayesian or statistical modeling (e.g., beta-binomial, Gaussian models) to compute molecular response scores with associated confidence intervals.
- Incorporates variant classification into somatic versus germline (referred to as "somatic" or "germline"/"clonal hematopoiesis of indeterminate potential" (CHIP)) and deals with resolving classification discrepancies between time points.
- Employs filtering of variants including CHIP and germline variants before calculating response scores.
- Uses weighted averages of MAF ratios and reports credible intervals (confidence intervals) for the molecular response score.
- Explicitly considers false negatives and uncertainties in variant detection.
- Involves using a set of variants (SNVs, indels, fusions) from targeted sequencing panels (also supporting genome-wide data) for analysis.
- Discusses longitudinal monitoring with multiple time points and integrates biological and technical variance into response quantification.
- Discloses computational methods and system implementations related to molecular response determination.
- Further includes therapeutic decision making based on molecular response scores.

#### Key Differences

- The patent is primarily focused on calculating a **molecular response score** that reflects changes in tumor burden (ctDNA levels) during cancer treatment, emphasizing therapy monitoring rather than genome-wide prior probability modeling or genetic diagnosis confidence.
- Quant’s unique feature is integrating **prior probabilities of observing pathogenic variants across the genome with observed/missing variant data**, including false negative modeling, to compute a **Bayesian posterior of a complete genetic diagnosis**—not merely tracking tumor variation or molecular response to therapy.
- The patent uses ratios of mutant allele fractions over two or more time points to estimate therapy response, but does **not** explicitly model population-wide prior probabilities of variant pathogenicity or the probability of a complete genetic diagnosis.
- The technical focus of the patent relates largely to **monitoring cancer treatment efficacy (molecular response)** via cfDNA variant load changes, while Quant is centered on **quantifying diagnostic certainty across the genome** in rare disease or genetic diagnosis contexts.
- The patent’s key theoretical foundation is in estimating tumor burden changes via observed variant allele fraction changes and handling CHIP/germline variant filtering—less emphasis is placed on Hardy-Weinberg equilibrium or inheritance mode modeling which are central to Quant.
- The patent’s Bayesian models are applied to calculating molecular response scores considering technical noise and stochastic read counts rather than integrating prior probabilities on a genome-wide scale for variant causality.
- Although both mention credible intervals/confidence intervals, their application contexts differ substantially: molecular response uncertainty vs. confidence in genetic diagnosis.

#### Conclusion

**Not blocking for Quant.**

While this patent employs a Bayesian/statistical approach to computing molecular response scores from MAF data over time, and includes variant classification and CHIP filtering relevant to cancer monitoring, it is technically focused on quantifying tumor burden changes during therapy rather than the genome-wide prior integration and posterior diagnostic probability modeling central to Quant. The concept of using TP/FN to compute a posterior genetic diagnosis probability is absent, as is modeling of prior disease variant probabilities or inheritance mode effects. The patent’s theory and application fields differ significantly from Quant’s novel method for genetic diagnosis confidence determination.
