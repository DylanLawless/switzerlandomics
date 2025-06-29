## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and apparatus for identifying one or more genetic variants associated with disease in an individual or group of related individuals
- **Publication No.:** WO2018051072A1
- **Publication Date:** 2018-03-22
- **Link:** https://patents.google.com/patent/WO2018051072A1/en

#### Abstract (excerpt)

> "A computer-implemented method comprises receiving input data comprising a set of candidate genetic variants present in an individual or group of individuals; generating candidate hypotheses each comprising sets of one or more candidate genetic variants; receiving prioritisation data representing an initial prioritisation of the candidate hypotheses; performing a plurality of update steps which take as input all prioritised candidate hypotheses and update the prioritisation with reference data; and outputting a prioritised list of candidate hypotheses."

#### Relevant Overlaps

- Uses a Bayesian probabilistic framework to update the prior probability of hypotheses (combining candidate variants and inheritance modes) by sequentially incorporating multiple sources of evidence (allele frequency, mutation consequence, spatial clustering, gene constraint, gene lists, phenotype-genotype correlations).
- Integrates candidate variants with varying inheritance modes (autosomal dominant, recessive, compound heterozygous, X-linked, de novo, and a non-genetic "null" mode).
- Models variant pathogenicity probabilities by combining prior inheritance-mode and variant-set probabilities with external reference data (ClinVar, population allele frequencies, phenotype databases).
- Explicitly models variants that may be missed or present with incomplete penetrance via hypotheses that include causal variants inconsistent with observed phenotype (e.g., variants carried by unaffected parents).
- Outputs posterior probabilities and ranks candidate hypotheses rather than binary classification, allowing quantification of confidence and reasons for ranking via contribution of each update step.
- Incorporates false negative or uncertain diagnosis scenarios by allowing a “null” hypothesis for non-genetic causes.
- Uses fine-grained allele frequency binning and personalized non-pathogenic distributions derived from patient data, akin to Quant’s use of population frequencies and statistical modeling.
- Provides credible ranking reasons by reporting the quantitative contributions of update factors (Bayes factors) per update step.

#### Key Differences

- The patent focuses primarily on scoring and prioritising candidate variant hypotheses by Bayesian updating, beginning with a set of candidate variants and hypotheses; it does not explicitly describe genome-wide prior probability calculations under Hardy-Weinberg Equilibrium across all genes and integrating observed/missing variant data into a diagnostic posterior probability that directly quantifies the confidence of a **complete genetic diagnosis**.
- No explicit mention of modeling genome-wide prior probabilities of **observing** disease-causing variants under population genetics assumptions (e.g., HWE) or aggregating these to form gene-level disease probabilities.
- The patent’s Bayesian model works from pre-selected candidate variants and hypotheses, and does not explicitly address integrating false negative probabilities from unobserved or poorly sequenced regions to estimate diagnostic certainty in a Bayesian posterior.
- Although the patent models the probability of hypotheses incorporating inheritance modes and variant sets, it appears focused on variant prioritisation rather than explicitly outputting credible intervals quantifying uncertainty about **the presence or absence of a causal variant genome-wide**.
- The patent’s approach is variant/hypothesis-centric and relies on update steps via Bayesian factors, while Quant uniquely includes a formal framework to compute Bayesian posteriors that quantify diagnostic certainty at a genome-wide scale, particularly integrating missing variant data.
- Quant provides specific outputs ranking genome-wide disease gene probabilities and credible intervals for diagnosis, whereas the patent emphasizes variant prioritisation without explicit credible interval reporting for diagnosis certainty.

#### Conclusion

Potential overlap — recommend legal review.

---

**Rationale:**  
This patent discloses a comprehensive Bayesian framework to prioritize candidate disease-causing variants across inheritance modes, incorporating multiple layers of evidence via update steps and producing posterior probabilities. The technical approach strongly resembles the probabilistic underpinnings and update-step design of Quant.

However, it lacks clear explicit teaching of Quant’s core innovations:

- Modeling genome-wide prior probabilities of pathogenic variants under Hardy-Weinberg Equilibrium.
- Integrating unobserved variant likelihoods (false negatives) to quantify diagnostic confidence.
- Producing full credible intervals for diagnosis certainty at a gene or genome-wide level.

Because the Bayesian model paradigm and integration of variant and inheritance hypotheses are central to both, and Quant’s unique novelty partly builds upon but extends such Bayesian modeling with genome-wide prior integration and diagnostic certainty assessment, this patent presents a significant technical overlap that should be legally reviewed for potential blocking.
