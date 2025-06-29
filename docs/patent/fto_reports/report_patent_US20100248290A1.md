## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for detecting lung cancer and monitoring treatment response
- **Publication No.:** US20100248290A1
- **Publication Date:** 2010-09-30
- **Link:** https://patents.google.com/patent/US20100248290A1/en

#### Abstract (excerpt)

> "A method is described for detecting lung cancer comprising detecting an elevated level of a CTAP III-related biomarker in a biological sample from a subject at risk for developing lung cancer. Further, a method is described for predicting risk of developing lung cancer in a subject comprising detecting an elevated level of a CTAP III-related biomarker in a biological sample from a subject. Additionally, a method of monitoring the success of lung cancer treatment with curative intent is described comprising detecting levels of a CTAP III-related biomarker in a biological sample from a subject undergoing treatment for lung cancer for comparison with the a previous level obtained from the subject."

#### Relevant Overlaps

- Both the patent and Quant involve probabilistic or biomarker-based assessment approaches in a clinical diagnostic context.
- The patent describes a method for detecting disease presence/risk by measuring levels of specific protein biomarkers (CTAP III-related biomarkers and haptoglobin) in patient biological samples.
- The patent includes integration of biomarker measurements with clinical, demographic, and lung-function-related risk factors to improve predictive accuracy.
- The patent discusses risk prediction models aimed at improving early diagnosis and monitoring treatment response.
- Use of data from patient-specific samples with comparison to prior levels or control samples to assess disease status.

#### Key Differences

- The patent focuses solely on proteomic biomarker detection (CTAP III-related proteins and haptoglobin) via mass spectrometry, ELISA assays, and associated multi-variate risk models for lung cancer.
- Quant is a genome-wide genetic variant probability platform, integrating variant-level allele frequencies, inheritance modes, observed and missing variant data, to compute Bayesian posterior probabilities of complete genetic diagnosis.
- Quant’s key innovation is modeling genetic variant observation probabilities including false negatives and inheritance patterns, deriving diagnostic confidence at variant and gene levels, rather than detecting or quantifying protein biomarkers.
- The patent does not address genetic variant interpretation, Bayesian integration of genetic variants, or calculation of credible intervals for diagnosis certainty.
- No mention of use of True Positives (TP), False Negatives (FN), False Positives (FP), or True Negatives (TN) in the manner Quant uses to integrate genetic evidence; nor does the patent describe genetic variant-level probabilistic frameworks.
- The clinical application domains differ: this patent targets lung cancer biomarker protein detection and risk modeling; Quant targets genome-wide variant pathogenicity and diagnosis probabilities for Mendelian disease or rare genetic disorders.
- The patent’s multi-variate models improve disease risk prediction by combining biomarker levels with clinical data but do not compute Bayesian posterior probabilities integrating observed/missing genetic data or model inheritance modes.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent discloses biomarker-based detection and monitoring methods for lung cancer using CTAP III-related proteins and haptoglobin, combined with clinical risk factors. While it involves patient-specific biomarker measurements and risk prediction, it does not overlap with Quant’s core technical innovation in probabilistic modeling of genome-wide genetic variant observations, inheritance patterns, and Bayesian diagnostic certainty quantification. The underlying data types (protein biomarkers vs. genetic variants), analytic frameworks (biomarker measurement and multivariate risk modeling vs. Bayesian genetic variant integration), and clinical applications differ substantially, indicating no blocking overlap.
