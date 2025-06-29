## Patent/Publication Analysis

### Reference #1

- **Title:** A kind of biomarker of PWS syndrome and its application, kit and data processing method  
- **Publication No.:** CN115524431A  
- **Publication Date:** 2023-05-12  
- **Link:** [https://patents.google.com/patent/CN115524431A/en](https://patents.google.com/patent/CN115524431A/en)  

#### Abstract (excerpt)

> "A biomarker for PWS syndrome and its application, kit and data processing method, relating to the technical field of biomarkers; biomarkers include FFA (22:6) and LPE (20:1), the biomarkers application in the risk assessment or early diagnosis reagent of PWS syndrome has better discrimination accuracy and sensitivity of PWS syndrome."

#### Relevant Overlaps

- Both Quant and this patent involve genetic or biomolecular assessment contributing to disease risk evaluation.
- The patent presents a data processing method based on biomarker quantification combined with a Logistic regression model to calculate disease risk probabilities.
- Both involve probabilistic disease risk assessment approaches.
- Use of modeling to output disease risk assessment metrics for clinical diagnostics.

#### Key Differences

- This patent is focused on lipidomic biomarkers (specifically certain free fatty acids and lysophosphatidylethanolamines) measured from serum samples for early diagnosis and risk assessment of Prader-Willi Syndrome (PWS), a specific genetic imprinting disorder.
- The modeling approach used is multivariate Logistic regression based on serum biomarker concentration data; it does not integrate genome-wide variant data or use Bayesian models involving variant observation probabilities.
- Quant’s unique innovation is genome-wide prior probability estimation for disease-causing genetic variants integrated with patient-specific variant observation data (TP, FN) under Hardy-Weinberg equilibrium, producing Bayesian posterior probabilities of a genetic diagnosis.
- This patent does not claim or describe genome-wide variant data analysis, Hardy-Weinberg equilibrium modeling, Bayesian integration of false positive/negative variant observations, or credible interval estimations related to variant pathogenicity or diagnosis confidence.
- The patent is targeted at a single clinical syndrome and relies on metabolite biomarkers measured via lipidomics and logistic statistical modeling rather than variant pathogenicity probability quantification.
- Does not address the key technological features of Quant such as integration of missing/unobserved variant data or genetic inheritance mode modeling.

#### Conclusion

Not blocking for Quant.

The patent relates to biomarker-based PWS diagnosis from lipidomics with Logistic regression modeling, which is distinct from Quant’s Bayesian genome-wide variant probability framework and integration of observed/missing variant calls for diagnosis confidence. There is no technical overlap in variant-level probabilistic modeling or Bayesian posterior disease probability estimation methods as implemented by Quant.
