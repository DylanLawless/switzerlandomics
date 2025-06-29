## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for complex biomolecule sampling and biomarker discovery
- **Publication No.:** WO2019209888A1
- **Publication Date:** 2019-10-24
- **Link:** https://patents.google.com/patent/WO2019209888A1/en

#### Abstract (excerpt)

> "Abstract Provided herein relates to methods and systems of a complex biomolecule sampling using machine learning algorithms. The methods and systems provided herein can aid in selection of previously unknown biomarkers and provide a report comprising a score or probability relating to a specified biological state. The methods and systems provided herein can aid in the rational design of particles to capture biomarkers."

#### Relevant Overlaps

- Use of machine learning classification models to identify biomarkers by assigning classification weights and combining these with association scores derived from public and private databases.
- Sampling of complex biomolecules (e.g., proteins) from biological samples without prior depletion, allowing detection of low abundance or non-recorded biomarkers.
- Building trained classification models by comparing proteomic or multi-omic data from subjects with and without specified biological states (e.g., diseases such as cancer).
- Generation of a biomolecule corona on nanoparticles or liposomes with varied physicochemical properties to capture distinct protein signatures.
- Use of relational databases (Corona Knowledge Map) cataloguing surface-activity relationships between nanoparticles and bound biomarkers to rationally design particles targeting specific biomarkers.
- Application of the trained classification model combined with reference data sets to detect and classify biomarker subsets linked to specified biological states.
- Report generation with probability or classification scores related to biological states.
- Use of diverse particle types such as polymeric particles, nanoparticles, liposomes with cationic, anionic or neutral lipids, and their functionalization to modulate biomolecule capture.
- Machine learning algorithms mentioned include Random Forest, Partial Least Squares, Logistic Regression, Support Vector Classifier, Naive Bayes, neural networks including deep and convolutional networks.

#### Key Differences

- The patent focuses primarily on biomarker discovery and disease state classification using proteomic and multi-omic data via particles that generate protein corona signatures, rather than genome-wide variant probability modeling.
- Does not disclose or claim methods integrating prior probabilities with observed/missing variant data to compute Bayesian posterior probabilities of complete genetic diagnosis.
- No explicit disclosure of calculating genome-wide disease variant priors using Hardy-Weinberg Equilibrium or modeling inheritance modes.
- Lacks the unique Bayesian framework of integrating false negative probabilities to quantify diagnostic certainty for genetic diseases.
- Does not appear to use variant allele frequency data, clinical variant databases (ClinVar), or genetic inheritance mode panels (PanelApp).
- Does not quantify confidence intervals or credible intervals reflecting the certainty of a genetic diagnosis.
- Instead, it analyzes protein-level biomarker patterns and particle-biomolecule interactions for disease biomarker detection and particle design.
- Its claimed novelty lies in multi-particle proteome sampling and biomarker classification, not in clinical genomics or genetic variant pathogenicity/posterior probability scoring.

#### Conclusion

Not blocking for Quant.

---

**Summary:** While this patent covers machine learning-based biomarker discovery from multi-omic proteomic data using nanoparticle coronas and classification models, it does not overlap the core technical innovation of Quant, which is the rigorous Bayesian integration of prior variant probabilities, inheritance modeling, and false negative probabilities to generate genome-wide posterior probabilities of a genetic diagnosis. The patent is primarily focused on biomarker detection from protein samples rather than genetic variant diagnostic probability modeling.
