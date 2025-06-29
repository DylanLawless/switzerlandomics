## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of prediction of embryonic blastocysts in vitro  
- **Publication No.:** ES2717478T3  
- **Publication Date:** [Not explicitly stated; see linked document for details]  
- **Link:** https://patents.google.com/patent/ES2717478T3/en

#### Abstract (excerpt)

> "Se proporcionan métodos, composiciones y kits para determinar la probabilidad de que uno o más embriones o células pluripotentes alcancen el estadio de blastocisto y/o el estadio de blastocisto utilizable ... basándose en la medición de parámetros celulares mediante imagen de lapso temporal."

#### Relevant Overlaps

- Both Quant and this patent focus on probabilistic prediction related to biological cells (blastocysts vs. disease-causing genomic variants).  
- The patent describes measuring cellular parameters (e.g. time intervals between cytokinesis events, P1, P2, P3) via time-lapse microscopy to estimate the probability of an embryo reaching the blastocyst stage or not.  
- Uses quantitative modeling (classification trees, Naive Bayes) leveraging true positives (blastocysts) and false negatives (non-blastocysts) in a predictive framework.  
- Explicit use of intervals between observed cell divisions (P2, P3) to stratify positive predictive and negative predictive values with credible intervals.  
- Integrates morphological classification ('good', 'bad' embryos) adjunctively with measured cell division timing parameters to improve prediction specificity.  
- Includes automated and manual measurement workflows for prediction and cell tracking with subsequent actionable clinical reports.  
- Describes Bayesian/ probabilistic statistical classifiers (Naive Bayes, decision trees) trained on cohorts to yield predictive probabilities, credible intervals, and performance metrics such as specificity and sensitivity.  

#### Key Differences

- Quant’s invention is in the field of genomics, estimating the **probability that specific genetic variants cause disease** by integrating population allele frequencies, clinical classifications, inheritance mode, and patient sequencing data through Hardy-Weinberg equilibrium and Bayesian posterior probabilities incorporating false negatives.  
- This patent exclusively addresses embryology, embryo viability, and blastocyst formation prediction **using time-lapse imaging of embryos**, focusing on cellular kinetics and division timing parameters (P1, P2, P3).  
- The key metrics measured here are based on **cellular morphological events and timing**, not genetic variant observation probabilities or Bayesian posterior disease causality estimation.  
- Quant’s method integrates **patient-specific genetic data with population priors to quantify genetic diagnosis confidence**, rarely or never relying on imaging or cellular morphological features.  
- The patent uses Bayesian classification with population-derived empirical training sets in embryo development, but does not perform or address integration of prior genetic probabilities, false positive/negative variant calls, or the concept of genome-wide prior probabilities of pathogenic variants.  
- No overlap in technical domain (embryonic cell imaging and prediction vs. genetic variant pathogenicity probability modelling).  
- No use of Hardy-Weinberg equilibrium variant probabilities or integration of variant observation and sequencing uncertainty as in Quant.  
- Their Bayesian model is focused on predicting blastocyst formation from cellular kinetics, not on genetic variant pathogenicity/posterior probability of diagnosis.  

#### Conclusion

**Not blocking for Quant.**

While both employ Bayesian or statistical classification models and consider true/false positive/negative concepts, the domains, inputs, and outputs differ substantially:

- Quant: genome-wide genetic variant pathogenicity integration into disease diagnosis probability.  
- Patent: embryo viability prediction via cell division timing parameters obtained by time-lapse microscopy.  

This is a fundamentally different technical problem, data type, and application. The patent does not disclose or suggest the core innovation of Quant: calculating Bayesian posterior probabilities of genetic diagnosis by integrating variant priors with observed/missing patient variant data. Likewise, Quant does not operate on or analyze time-lapse cellular imaging data or blastocyst formation prediction.

Thus, there is no material technical overlap that would limit Quant’s freedom to operate.
