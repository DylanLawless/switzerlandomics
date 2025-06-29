## Patent/Publication Analysis

### Reference #1

- **Title:** A kind of biomarker of PWS syndrome and its application, kit and data processing method
- **Publication No.:** CN115524431A
- **Publication Date:** 2023-04-21
- **Link:** https://patents.google.com/patent/CN115524431A/en

#### Abstract (excerpt)

> "A biomarker for PWS syndrome and its application, kit and data processing method, relating to the technical field of biomarkers; biomarkers include FFA (22:6) and LPE (20:1), the biomarkers in risk assessment or early diagnosis reagent of PWS syndrome with better discrimination accuracy and sensitivity."

#### Relevant Overlaps

- The patent relates to genetic or molecular diagnostics in the disease area of Prader-Willi syndrome (PWS).
- It describes a data processing method to calculate disease risk probability using a Logistic regression model based on biomarker levels.
- The method integrates patient sample data (biomarker content) with a previously established statistical model to output a disease risk probability.
- Use of patient data inputs and statistical modeling (Logistic regression) to assess disease risk parallels Quant’s patient-data-informed diagnostic probability calculations.
- Both relate to risk assessment or early diagnosis based on biological measurements.

#### Key Differences

- The reported biomarkers are specific lipid molecules (FFA and LPE species) identified by mass spectrometry; Quant operates on genome-wide genetic variant data.
- The data processing method uses a Logistic regression model on biomarker concentration values—not Bayesian integration of prior genetic probabilities with observed/missing variant data.
- Quant's core innovation is genome-wide Bayesian modeling incorporating Hardy-Weinberg Equilibrium and inheritance patterns to compute posterior probabilities of genetic diagnosis, explicitly accounting for false negatives and variant observation probabilities.
- This patent focuses on a specific disease (PWS) using selected lipid biomarkers rather than genome-wide genetic variant probabilities.
- It lacks modeling or consideration of variant-level prior probabilities, modes of inheritance, or credible intervals for genetic diagnostic certainty.
- The use of applying a Logistic regression risk model to biomarker data is a common statistical practice, not a Bayesian posterior genotype probability involving TP/FN rates.

#### Conclusion

Not blocking for Quant.

---

The patent is focused on lipidomic biomarkers and Logistic regression for PWS risk prediction and does not describe or claim genome-wide Bayesian posterior probability models integrating observed and missing variant data as Quant does. The technical methods and concepts are distinct and do not overlap with Quant’s core innovations.
