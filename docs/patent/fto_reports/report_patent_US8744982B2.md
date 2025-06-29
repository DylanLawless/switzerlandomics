## Patent/Publication Analysis

### Reference #1

- **Title:** Gene-specific prediction  
- **Publication No.:** US8744982B2  
- **Publication Date:** 2014-06-03  
- **Link:** https://patents.google.com/patent/US8744982B2/en

#### Abstract (excerpt)

> "A gene-specific prediction tool for classifying and interpreting gene tests is described. The prediction tool includes a classifier trained and tested using databases of gene variants and their known phenotypes. The classifier uses differences between features of amino acids in obtaining attributes used to perform classification and generate predictions, including for benign and pathologic outcomes, for uncertain gene variants."

#### Relevant Overlaps

- Uses machine learning classifiers (e.g., Naïve Bayesian, Random Forest, SVM) to predict phenotype severity of genetic variants.
- Compares variant amino acid features to wild-type amino acid features quantitatively (difference in physicochemical properties).
- Employs training/test sets of known pathogenic and benign variants for model building and validation.
- Produces predictions such as "pathogenic" or "benign" classifications.
- Uses probabilistic output (e.g., posterior probabilities from classifiers like Naïve Bayes) for variant classification.
- Focus on uncertain variants (variants of unknown significance), using computational prediction tools to assist clinical interpretation.
- Explicit use of physical and chemical amino acid properties, and selection of relevant features for classification.
- Demonstrated use of commonly known algorithms including Naïve Bayesian classifier to estimate likelihood of pathogenicity.

#### Key Differences

- The patent focuses on classification of individual variants into pathogenic/benign categories rather than computing genome-wide prior probabilities.
- It does not describe integrating prior probabilities of variant observations at a genome-wide level under any population genetics framework (e.g., Hardy-Weinberg Equilibrium).
- Does not explicitly address integration of observed patient variant data with probabilities for false negatives or missing data.
- Lacks a Bayesian framework that models overall confidence or credible intervals for a **complete genetic diagnosis** (gene-level or genome-wide probability of causal disease).
- The patent’s approach remains variant-centric: predicting phenotype severity based on amino acid changes, rather than probabilistic diagnosis certainty combining variant frequency, inheritance mode, and clinical data.
- No disclosure of calculating posterior probabilities that a patient harbors a disease-causing variant accounting for false negatives, inheritance patterns, or sequencing gaps.
- Does not produce gene-level or genome-wide disease probability reports with credible intervals on diagnostic certainty.
- No mention of integrating multiple observed and unobserved variant data into a unified Bayesian diagnostic confidence score.
- The methodology is specific to amino acid property differences and machine learning classifiers, not probabilistic modeling of variant observability or diagnostic completeness.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
While both the patent and Quant use Bayesian classifiers and address variant pathogenicity prediction, this patent is limited to variant-level machine learning classification based on amino acid property differences. It does not include Quant’s key innovations of genome-wide prior probability estimation under population genetics models, integration of observed versus missing variant data (TP, FN), nor calculation of posterior probabilities reflecting diagnostic confidence with credible intervals. Thus, it does not block Quant’s novel approach to quantifying complete genetic diagnosis certainty.
