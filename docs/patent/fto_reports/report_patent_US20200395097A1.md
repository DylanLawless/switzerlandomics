## Patent/Publication Analysis

### Reference #1

- **Title:** Pan-cancer model to predict the pd-l1 status of a cancer cell sample using rna expression data and other patient data  
- **Publication No.:** US20200395097A1  
- **Publication Date:** 2020-12-17  
- **Link:** https://patents.google.com/patent/US20200395097A1/en  

#### Abstract (excerpt)

> "Provided herein are computer-implemented methods of identifying programmed-death ligand 1 (PD-L1) expression status of a subject's sample comprising a cancer cell… aligning the unlabeled expression data set to labeled expression data according to a trained PD-L1 predictive model … wherein aligning the unlabeled gene expression data set to labeled expression data according to the trained PD-L1 predictive model identifies PD-L1 expression status for the subject's sample."

#### Relevant Overlaps

- Use of RNA expression data (specifically RNA-seq) to predict expression status of a biomarker (PD-L1) in patient cancer samples.
- Machine learning models (logistic regression, random forests, SVM) utilizing gene expression features to classify expression status.
- Building predictive models trained on labeled data sets integrating multiple cancer types ("pan-cancer") or specific cancer types.
- Normalization of RNA-seq data and leveraging gene expression features to infer clinically relevant biomarkers.
- Generation of clinical decision support reports including predicted biomarker status for personalized treatment decisions.
- Integration of multi-modal data (imaging, clinical records, epigenetics, metabolomics) as optional input features.
- Models focus on predicting a biomarker status (PD-L1 expression positive/negative/equivocal) to guide immune checkpoint blockade therapy.
  
#### Key Differences

- The patent is focused on predicting **PD-L1 protein expression status from RNA expression data**, primarily via machine learning classification models, including logistic regression on gene expression features.
- Quant’s core novelty is **not prediction or classification of a biomarker or variant pathogenicity**, but rather **calculation of genome-wide prior probabilities of observing pathogenic variants, and Bayesian integration of observed and missing variant data to compute posterior probabilities of a complete genetic diagnosis**.
- Quant explicitly models and quantifies false negatives (missing variant data), integrating TP, FP, TN, and FN outcomes into a Bayesian framework for diagnostic confidence, which is **absent** in this PD-L1 patent.
- The patent does not address **variant-level or gene-level variant probability estimation**, nor does it integrate **prior population variant data with patient-specific variant observations** to produce diagnostic risk probabilities.
- The described patent’s focus on PD-L1 expression prediction from RNA-seq and related data **does not overlap with Quant’s genetic-diagnosis-probability framework** using population genetics and Bayesian modeling of variant observations.
- The technology described in the patent targets **expression status of an immune checkpoint biomarker for cancer treatment indication**, not the genome-wide variant pathogenicity or diagnostic confidence modeling domain where Quant operates.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
While both technologies involve advanced computational analysis of genomic and transcriptomic data, this patent relates to predicting protein expression status (PD-L1) using machine learning methods on RNA expression and other data. Quant addresses a fundamentally different technical challenge — probabilistic modeling of genetic diagnosis uncertainty via integrating prior probabilities and observed/missing variant data in a Bayesian framework. The PD-L1 patent does not employ or claim Bayesian modeling of true positive/false negative variant data to ascertain genetic diagnosis probability, nor gene- or genome-wide variant probability estimation. Hence no close technical overlap with Quant’s novel method.
