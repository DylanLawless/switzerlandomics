## Patent/Publication Analysis

### Reference #1

- **Title:** Computer system and method for subdividing complex diseases into constituent diseases
- **Publication No.:** JP2005527904A
- **Publication Date:** 2005-01-13
- **Link:** [https://patents.google.com/patent/JP2005527904A/en](https://patents.google.com/patent/JP2005527904A/en)

#### Abstract (excerpt)

> "A method for identifying a quantitative trait locus for a complex trait exhibited by a plurality of organisms in a population. This population is divided into multiple subpopulations using a classification scheme... For each subpopulation, a quantitative genetic analysis is performed to identify one or more quantitative trait loci for the composite trait."

#### Relevant Overlaps

- The patent describes subdividing a population into genetically or phenotypically defined subpopulations (using supervised or unsupervised classification based on multiple measurements such as gene expression or metabolomics data).
- It uses quantitative genetic analysis (e.g. QTL mapping) within these subpopulations to identify genetic loci linked to complex traits.
- Clustering and multivariate statistical models are applied to integrate expression or QTL data to define candidate genetic pathways.
- The concept of using a mixture of “true positive” subgroups and considering false negative or measurement errors is implied.
- Approaches include modeling incomplete penetrance, genetic heterogeneity, polygenic inheritance, and high-frequency disease alleles.
- Techniques for integrating multilevel omics data (gene expression, metabolite levels, protein profiling) are discussed.
- A Bayesian-like approach is used to integrate prior probabilities with observed data to refine diagnoses.
- The patent emphasizes deriving probabilistic or credible risk estimates for genetic traits by combining observed data with prior genetic models.

#### Key Differences

- The patent mainly focuses on genetic linkage analysis and QTL mapping in subdivided populations, particularly in model organisms or family-based data.
- It does not explicitly detail integration of false negative probabilities or comprehensive Bayesian posterior probabilities for individual genome-wide variant pathogenicity diagnosis, as in Quant.
- The Patent targets mostly animal or plant genetics with conventional QTL and population subdivision methods, focusing on genetic linkage and expression data clustering, rather than clinical diagnosis certainty intervals.
- While Bayesian models are generally mentioned, the detailed integration of prior variant-level frequencies, observed genotypes, and explicit modeling of false negatives for clinical diagnosis confidence is not clearly disclosed.
- The use of true positive (TP) and false negative (FN) variant categories integrated into genome-wide prior and posterior probability calculations is unique to Quant.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent discloses methods for subdividing populations by phenotypic or expression profiles and applying QTL and multivariate analyses to identify genetic loci for complex traits. Although there is similarity in concept (population subdivision, QTL mapping, use of gene expression data, and modeling complex traits), the core innovation of Quant—precise integration of genome-wide prior variant probabilities, observed and missing variant data, explicit false negative modeling, and Bayesian posterior probability computation for diagnostic confidence—is not taught or suggested. The patent addresses a broader framework for identifying QTLs and candidate pathways but does not overlap on the precise probabilistic framework and diagnosis certainty quantification of Quant. Thus, it is not blocking.
