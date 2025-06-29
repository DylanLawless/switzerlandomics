## Patent/Publication Analysis

### Reference #1

- **Title:** Molecular evidence platform for auditable, continuous optimization of variant interpretation in genetic and genomic testing and analysis
- **Publication No.:** US12136472B2
- **Publication Date:** 2023-03-14 (approximate; priority from 2017)
- **Link:** https://patents.google.com/patent/US12136472B2/en

#### Abstract (excerpt)

> "Disclosed herein are system, method, and computer program product embodiments for optimizing the determination of a phenotypic impact of a molecular variant identified in molecular tests... by way of regularly incorporating, updating, monitoring, validating, selecting, and auditing the best-performing evidence models for the interpretation of molecular variants across a plurality of evidence classes."

#### Relevant Overlaps

- Use of evidence models (including computational predictors) to generate predictions of phenotypic impacts of molecular variants.
- Evaluation of models using uniform performance metrics such as true positive rate, positive predictive value, and others within a genetic testing context.
- Incorporation of validation and test data sets, including disjoint sets of molecular variants for unbiased performance estimates.
- Ranking and selection of best-performing evidence models based on statistical performance.
- Use of hashing and distributed databases (e.g., blockchain) to store audit records ensuring data integrity and enabling transparent auditing of variant interpretations and evidence models.
- Application to variant interpretation in clinical genomics, including support for querying a variant interpretation terminal.
- Performance metrics described include true positives, false negatives, true negatives etc., representing detailed classification metrics.

#### Key Differences

- The patent focuses on the continuous optimization and auditing of evidence models for variant interpretation, emphasizing model management, validation, and provenance tracking.
- No explicit disclosure or claim of computing genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg equilibrium or integrating these priors with patient-specific observed and missing data to compute posterior diagnostic probabilities.
- The patent describes evaluating evidence models on a variant-by-variant basis and selecting best predictors but does not include a Bayesian framework integrating observed true positives and false negatives to quantify the probability of a complete genetic diagnosis with credible intervals.
- There is no teaching of combining prior population genetics-derived probabilities with observed patient variant data and false negative probabilities as a unified diagnostic confidence output.
- Use of Bayesian posterior probabilities specifically modeling diagnostic certainty by integrating both observed and missing variant data is not present.
- The invention is more focused on auditing, ranking, and selecting phenotypic impact prediction models, rather than on quantifying genome-wide prior or posterior disease probabilities per gene or patient.

#### Conclusion

Not blocking for Quant.

---

**Summary:** While the patent extensively addresses evaluation, auditing, and ranking of variant interpretation evidence models using classification metrics such as TPR, PPV etc., and emphasizes transparency and validation, it does not teach or claim the central innovations of Quant — namely, the genome-wide prior probability computation under population genetics assumptions combined with integration of observed/missing patient variant data in a Bayesian framework to produce per-patient diagnostic posterior probabilities with credible intervals. The mere use of classification statistics or Bayesian methods to evaluate or optimize evidence models is insufficient to block Quant’s unique approach of probabilistic diagnosis confidence quantification.
