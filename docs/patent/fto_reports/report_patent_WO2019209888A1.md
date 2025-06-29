## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for complex biomolecule sampling and biomarker discovery  
- **Publication No.:** WO2019209888A1  
- **Publication Date:** 2019-10-31  
- **Link:** https://patents.google.com/patent/WO2019209888A1/en

#### Abstract (excerpt)

> "Abstract Provided herein relates to methods and systems of a complex biomolecule sampling using machine learning algorithms. The methods and systems provided herein can aid in selection of previously unknown biomarkers and provide a report comprising a score or probability relating to a specified biological state. The methods and systems provided herein can aid in the rational design of particles to capture biomarkers."

#### Relevant Overlaps

- Use of multi-omic data sets (e.g., proteomic data) generated from complex biological samples and applying trained machine learning classification models to identify biomarkers linked to specified biological states (e.g. disease states such as cancer).
- Application of machine learning models (e.g., Random Forest, Partial Least Squares, Logistic Regression) to generate classification model weights for features (biomolecules such as proteins).
- Reference data set querying (e.g., public databases like Open Targets) to generate association scores, then combining classification model weights with association scores to prioritize biomarkers.
- Detection and classification of multi-particle biomolecule corona signatures formed by nanoparticles or liposomes with defined physicochemical properties—these corona signatures are used to differentiate biological states.
- Construction and use of relational databases (Corona Knowledge Map) to catalog biomolecule-sensor element (particle) interactions for rational design of capture particles.
- Detailed claims and embodiments directed to applying machine learning models to complex biomolecule sampling data to identify novel biomarkers present at low or previously undocumented concentrations.
- Explicit inclusion of sensitivity and specificity metrics for biomarker detection.
- Description of systems comprising computational components for data storage, model building, querying reference databases, and generating reports related to biological states.
- Use of nanoparticles/liposomes with various surface chemistries to generate distinct biomolecule corona profiles for biomarker detection.
- Generating biomarker profiles for disease diagnosis, prognosis, and therapeutic efficacy assessment.

#### Key Differences

- This patent addresses broad complex biomolecule (especially proteome) sampling and biomarker discovery primarily by characterizing biomolecule corona signatures on different nanoparticles and applying machine learning to identify disease-associated biomarkers.
- The focus is on identifying biomarkers (proteins and other biomolecules) associated with diseases, including biomarkers that are novel or poorly characterized, using multi-particle sampling combined with machine learning.
- The analysis is centered on biomolecule classification and discovery, with no disclosure or suggestion of integrating genetic variant prior probabilities, observed and missing variant calls, or explicitly modeling true positive/false negative rates into a Bayesian framework to compute a posterior probability of a genetic diagnosis.
- It does not address genome-wide variant probabilistic diagnosis, inheritance mode modeling, or credible intervals reflecting diagnostic certainty based on variant observation probabilities.
- No mention of the use of Hardy-Weinberg equilibrium or derivation of gene-level prior pathogenic variant probabilities or integration with specific genomic datasets such as gnomAD, ClinVar, or PanelApp for diagnostic certainty computation.
- The patent’s machine learning application is on biomolecule concentration and proteomic data analysis rather than Bayesian integration of observed/missing genomic variant data with prior probabilities.
- Absence of an approach explicitly modeling TP, FP, TN, FN variant observation outcomes or focusing on quantifying confidence in a complete genetic diagnosis derived from variant data.
- No explicit disclosure of computing Bayesian posterior probabilities for genome-wide variant pathogenicity or genetic diagnosis certainty as the core innovation.

#### Conclusion

Not blocking for Quant.

---

**Summary:** Although both Quant and this patent involve machine learning and Bayesian/statistical analysis in biological data, the technical overlap is limited to general machine learning classification of disease-associated biological features. This patent teaches biomolecule (particularly protein) corona sampling and biomarker discovery using multi-particle sampling and classification weight scoring combined with existing knowledge scoring. It does not disclose or suggest the key conceptual and technical innovations of Quant related to:

- Bayesian calculation of genome-wide prior probabilities of observing pathogenic variants per gene.
- Integrating these priors with patient-specific observed and missing variant calls using TP, FN, FP, TN frameworks.
- Computation of posterior probabilities of a complete genetic diagnosis.
- Modeling inheritance modes and sequencing false negative probabilities.
- Outputting credible intervals of diagnostic certainty tied directly to genome-wide variant data.

Hence, there is no meaningful technical overlap that would block Quant’s freedom to operate. The patent operates in a distinct domain of proteomic biomarker discovery and nanoparticle corona profiling rather than genome-wide Bayesian variant diagnosis certainty modeling.
