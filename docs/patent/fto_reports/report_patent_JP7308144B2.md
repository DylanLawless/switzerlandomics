## Patent/Publication Analysis

### Reference #1

- **Title:** System and method for detection of eye disease  
- **Publication No.:** JP7308144B2  
- **Publication Date:** [Not provided]  
- **Link:** https://patents.google.com/patent/JP7308144B2/en

#### Abstract (excerpt)

> Disclosed herein is a computing system for storage and analysis of multiple eye images. The system can import multiple eye images using multiple imaging modalities, including delayed near-infrared analysis (DNIRA), infrared reflectance (IR), fundus autofluorescence (FAF), optical coherence tomography (OCT), etc. It includes segmentation, delta analysis across clinical visits, and wide-area image analytics to quantify features such as geographic atrophy (GA), drusen, retinal pigment epithelial (RPE) detachment, tumor-associated macrophages (TAM), and autoimmune or inflammatory ocular diseases. The system also integrates machine learning, deep learning, and cognitive computing for image interpretation, diagnosis, prognosis, patient management, and therapy selection. The system can detect fluorescent patterns related to various eye diseases and provide companion diagnostics, monitoring, and prediction of disease progression and treatment response.

#### Relevant Overlaps

- Both Quant and this patent involve analysis and interpretation of genomic or medical imaging data for diagnosis and prognosis of diseases.
- The patent describes use of multiple imaging modalities incorporating Bayesian or statistical methods (e.g. segmentation, delta analysis, machine learning) to generate probabilistic or measurement outputs related to disease burden and progression.
- There is mention of integrating prior observations with sequential image data (true presence, absence) and modeling uncertainties/variabilities across modalities and visits.
- Both systems support producing credible, quantified outputs including risk estimates and features with uncertainty for clinical decision support.
- DNIRA uses delayed near-infrared analysis coupled with Bayesian/computational models to generate probability maps of disease presence and progression.
- The patent system’s key technical methods involve: (1) collecting prior information on characteristic features of eye disease phenotypes (e.g., true positives in imaging data), (2) integrating dynamic imaging data over time (addressing false negatives or unseen regions), and (3) applying Bayesian/statistical models to quantify diagnostic confidence and progression probabilities.  
- This aligns closely with Quant’s unique innovation of integrating genetic prior probabilities and observed/missing data with Bayesian posterior probability for disease-causing variants and diagnostic certainty.

#### Key Differences

- The patent is focused on **ocular imaging data** analysis from multiple imaging modalities (DNIRA, FAF, OCT, etc.) in the diagnosis and monitoring of **eye diseases**, particularly macular degeneration and related retinal disorders.  
- Quant is focused on **genome-wide genetic variant probability modeling** integrating observed and unobserved variant data (TP, FN, etc.) to produce Bayesian posterior probabilities of complete genetic diagnosis in genomic sequencing datasets.  
- The patent’s Bayesian/statistical modeling relates to **image feature extraction, segmentation, and temporal change assessment** from medical images, NOT genetic variant prior/posterior probability modeling or integrating population genetics data under Hardy-Weinberg Equilibrium.  
- Usage of **TP, FP, TN, FN concepts in the patent is implicit** in image analysis but the core innovation is not directly on diagnostic probability of genetic variants but on image biomarker quantification and phenotype classification.  
- The patent addresses **eye disease biomarker imaging and associated machine learning for diagnosis/progression**, whereas Quant’s novelty is quantifying **genetic diagnosis confidence genome-wide from patient-specific genomic data combined with population priors and false negative assessment**.  
- The technology domains are related but distinct: clinical workflow and imaging versus genomic variant probabilistic interpretation.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
The patent comprehensively discloses an imaging-based system using multiple ocular imaging modalities including delayed near-infrared analysis (DNIRA) to detect and quantify retinal disease biomarkers, employing advanced image segmentation, delta analysis, and machine learning methods. While it shares higher-level similarity in the use of Bayesian/statistical models to generate probabilistic assessments and credible diagnostic outputs, the technical methods, data type (imaging vs. genome variant), and key innovations differ substantially. Quant’s core novelty—integrating genome-wide prior variant probabilities with observed patient genetic data accounting for FNs to compute Bayesian posterior genetic diagnosis probabilities—is not disclosed or suggested in this patent. Instead, the patent addresses image-based disease assessment and progression monitoring. Therefore, there is no direct technical overlap that would block Quant’s freedom-to-operate.

---

*No other patents or publications were provided for review.*
