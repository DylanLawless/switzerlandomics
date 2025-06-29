## Patent/Publication Analysis

### Reference #1

- **Title:** Method for assessing risk of producing a severe response to coronavirus infection  
- **Publication No.:** CN116134152A  
- **Publication Date:** 2022-05-17  
- **Link:** https://patents.google.com/patent/CN116134152A/en  

#### Abstract (excerpt)

> "The present disclosure relates to methods and systems for assessing a human subject's risk of developing a severe response to a coronavirus infection, such as a severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2) virus infection."

#### Relevant Overlaps

- The patent focuses on genetic risk assessment involving detection of multiple polymorphisms (SNPs) associated with severe COVID-19 response, combined with clinical risk factors to output a composite risk prediction.
- Uses polygenic risk scores calculated from odds ratios and allele frequencies of SNPs, employing additive log-odds or multiplicative models.
- Combines clinical risk factors such as age, sex, ethnicity, comorbidities with genetic risk scores to evaluate a subject's probability (risk) of severe coronavirus infection outcome.
- Employs logistic regression, beta coefficients, and a formula to generate risk probabilities (log-odds, exponentiation).
- SNP detection is via primers and probes targeting specific polymorphisms; includes arrays and sequencing methods.
- The method generates a risk score or probability used to stratify patients for diagnostic testing, therapy, and clinical trial inclusion.

#### Key Differences

- The patented method is directed to assessing risk for **infectious disease severity (coronavirus infection)**, specifically severe COVID-19 response, by polygenic risk scores combined with clinical factors.
- Quant focuses on **genome-wide prior probabilities for variant pathogenicity across all genes** and integrates observed/missing variant data (TP, FN, etc.) to compute a Bayesian posterior probability of a complete genetic diagnosis.
- Quant explicitly models Hardy-Weinberg equilibria, false negative probabilities in patient sequencing data, and inheritance modes, providing credible intervals for diagnostic certainty.
- The patent does **not** describe:
  - Modeling disease gene-wise prior probabilities genome-wide.
  - Bayesian integration of prior probabilities with true positive and false negative variant observations in clinical genomes.
  - Computing posterior probabilities to quantify certainty of a genetic diagnosis.
- The patent uses logistic regression-based polygenic risk scores and clinical factor weighting, typical of risk prediction models, but does not quantify diagnostic certainty or false negatives in a Bayesian framework as Quant does.
- No mention or use of TP, FN, TN, FP distinctions or explicit modeling of unobserved pathogenic variants.
- The use of Bayesian posterior probability integrating prior probabilities with patient-specific observed/missing variants is absent; the patent focuses on risk prediction rather than complete genetic diagnosis confidence.

#### Conclusion

Not blocking for Quant.

**Rationale:** While both methods handle genetic variant data and clinical information to assess disease risk, this patent fundamentally addresses risk prediction of severe infectious disease outcomes (Covid-19) using polygenic risk scores and clinical factors in a logistic regression framework. Quant’s unique innovation is Bayesian modeling of genome-wide prior probabilities combined with patient-specific observed and unobserved variant data to compute a posterior probability of a complete genetic diagnosis, including false negative quantification and credible intervals. This conceptual and technical distinction means the patent does not block Quant’s invention.
