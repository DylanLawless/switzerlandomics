## Patent/Publication Analysis

### Reference #1

- **Title:** Malicious code visualization and variant detection method, device, equipment and storage medium
- **Publication No.:** CN111797395B
- **Publication Date:** 2021-08-06
- **Link:** https://patents.google.com/patent/CN111797395B/en

#### Abstract (excerpt)

> "The invention discloses a malicious code visualization and variant detection method ... comprising: converting malicious codes to be detected into one-dimensional time sequence signals; performing singular spectrum transformation on the one-dimensional time sequence signal to obtain a singular transformation spectrum corresponding to the malicious code, and outputting and displaying it; inputting the singular transformation spectrum into a preset malicious code classifier for variant detection to obtain family information..."

#### Relevant Overlaps

- Both Quant and this patent perform probabilistic or analytical assessments on variation data: Quant on genetic variants, and this patent on malicious code variants.
- Both utilize transformation of raw input data into a one-dimensional signal form. Quant converts genomic variant presence/absence into probabilistic priors/posteriors; the patent converts binary malicious code into one-dimensional integer arrays/time series.
- Both employ classification or probabilistic inference models: Quant uses Bayesian methods integrating prior probabilities with observed variant data; the patent uses machine learning classifiers (e.g., Random Forest, SVM) trained on singular spectrum transformed features to detect variant families.
- Use of prior knowledge/training data: Quant incorporates population genetics prior probabilities and clinical data; the patent uses pre-collected malicious code samples and their singular spectrum transformed features for training classifiers.

#### Key Differences

- Technology domain: Quant is a genome-wide variant probability platform for genetic diagnosis in clinical genetics; the patent targets malicious code variant detection in cybersecurity.
- Underlying data: Quant deals with genetic variants, allele frequencies, variant pathogenicity and incorporates true/false positive/negative modeling in a Bayesian framework; the patent deals with binary executables converted to time series signals and singular spectrum features.
- Methodology: Quant uniquely integrates prior variant observation probabilities and false negative probabilities under genetic inheritance models to compute Bayesian posterior probabilities of genetic diagnosis; the patent primarily focuses on signal transformation of code and machine learning classification without explicit Bayesian modeling or use of TP/FN concepts.
- Outputs: Quant outputs credible intervals for diagnosis confidence reflecting uncertainty; the patent outputs malicious code family classification results.
- No disclosure or mention of integration of false negatives (FN), true positives (TP), or conditional probabilities analogous to genetic diagnosis certainty.
- Quant’s focus is on quantifying diagnostic certainty genome-wide across inheritance modes, requiring population genetics assumptions (e.g. Hardy-Weinberg equilibrium), which is not applicable to code analysis in patent.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** Though both Quant and the patent apply signal transformation and classification to variant detection problems, the field, data types, and core theoretical frameworks differ substantially. Critically, the patent does not address the unique Quant innovation of integrating population genetic priors with observed/missing variant data to compute Bayesian posterior probabilities encompassing TP, FP, TN, FN outcomes. The patent’s focus on visualizing and classifying malicious code variants using singular spectrum analysis and standard machine learning classifiers lacks the key conceptual overlap with Quant’s Bayesian probabilistic genetic diagnosis framework.
