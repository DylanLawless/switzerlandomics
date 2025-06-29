## Patent/Publication Analysis

### Reference #1

- **Title:** A kind of biomarker of PWS syndrome and its application, kit and data processing method
- **Publication No.:** CN115524431A
- **Publication Date:** 2023-04-11
- **Link:** https://patents.google.com/patent/CN115524431A/en

#### Abstract (excerpt)

> "A biomarker for PWS syndrome and its application, kit and data processing method, relating to the technical field of biomarkers; biomarkers include FFA (22:6) and LPE (20:1), the biomarkers' application in risk assessment or early diagnosis reagent of PWS syndrome has better discrimination accuracy and sensitivity of PWS syndrome."

#### Relevant Overlaps

- Both Quant and this patent involve probabilistic models for disease risk assessment.
- The patent uses a Logistic regression model to estimate the probability that a subject has PWS syndrome based on biomarker levels.
- The patent includes a data processing method calculating disease risk probabilities, integrating biomarkers with statistical models.
- Both systems produce a risk probability (posterior probability in Quant; logistic regression output here) for diagnosis.

#### Key Differences

- The patent focuses specifically on PWS syndrome and relies solely on serum lipid biomarkers (FFA and LPE species), not genome-wide genetic variant data.
- Risk estimation is based on a classical Logistic regression model using measured biomarker levels, not on integrating prior probabilities of variant pathogenicity under Hardy-Weinberg equilibrium.
- No use of genetic variant data, inheritance modeling, or integrating true positive/false negative variant observations.
- The patent does not address genome-wide variant probability modeling or Bayesian posterior probability of genetic diagnosis.
- The logistic model applied is purely phenotype/biomarker-driven without genetic sequencing evidence integration.
- Quant’s core novelty — Bayesian integration of prior variant probability with observed/missing variants, modeling TP/FN to estimate diagnostic certainty — is not present.

#### Conclusion

Not blocking for Quant.

The patent applies a biomarker-based logistic regression risk model unrelated to genome-wide variant probability modeling or Bayesian integration of genetic variant evidence as implemented in Quant. It does not overlap with Quant’s unique theoretical framework or computational approach.
