## Patent/Publication Analysis

### Reference #1

- **Title:** Probabilistic variant interpretation
- **Publication No.:** WO2025050071A1
- **Publication Date:** 2025-02-13 (publication date from metadata on linked page)
- **Link:** https://patents.google.com/patent/WO2025050071A1/en

#### Abstract (excerpt)

> "Examples may create input data for a causal machine learning model using pathogenicity evidence data associated with a genetic variant and a health condition. Examples may apply a causal machine learning model to the input data to produce a trained causal model. A graphical representation of the trained causal model may include nodes connected via acyclic directed edges. A first node of the nodes may represent a pathogenicity evidence variable related to the health condition. At least one second node may represent a cause of the pathogenicity evidence variable. At least one third node may represent an effect of the pathogenicity evidence variable. An acyclic directed edge may represent a relationship between two of the nodes. Examples may output predictive data sampled from the trained causal model."

#### Relevant Overlaps

- The patent discloses a **causal machine learning model** represented as a **probabilistic graphical model** (directed acyclic graph, DAG), where a central node represents **pathogenicity**, with upstream nodes as causes (e.g., protein function disruption, mRNA processing impacts) and downstream nodes as effects (e.g., patient phenotype, allele frequencies).
- It employs **Bayesian inference and probabilistic modeling** to quantify relationships between pathogenicity evidence types.
- The model integrates **multiple types of evidence**, including clinical data, population frequency data, functional experimental data, and splice site prediction models.
- The training process involves **supervised learning with labeled pathogenicity data**, and the model outputs **posterior probabilities** (probability of pathogenicity, PoP).
- The model explicitly accounts for **uncertainty and distributions**, allowing sampling of any node (including pathogenicity) to obtain probabilistic predictions.
- Also disclosed is the use of **natural language processing (NLP)** applied to clinical phenotype data from test requisition forms to extract features predictive of diagnosis.
- The described system produces **quantitative variant pathogenicity probabilities** and supports downstream clinical variant interpretation or diagnosis.
- The patent describes **fitness and validation** processes based on performance metrics like AUROC for evaluating model quality.
- It also includes a platform of multiple **machine learning-based evidence models**, which are evaluated, weighted, calibrated, and combined using Bayesian causal modeling to produce integrated pathogenicity estimates.
- The patent outlines **iterative updating and integration of new evidence**, including mechanistic models and empirical data.

#### Key Differences

- The patent mainly focuses on producing **probability of pathogenicity for individual variants**, integrating multiple heterogeneous evidence types through a causal Bayesian network.
- Although probabilistic and causal inference-based, it **does not explicitly mention modeling patient-level false negatives, missing variants or unsequenced regions with a diagnostic posterior probability accounting for TP, FP, TN, FN outcomes**, which is central to Quant’s novelty.
- The focus is on variant interpretation and pathogenicity prediction, whereas **Quant uniquely quantifies the diagnostic confidence of a complete genetic diagnosis at the gene and genome level**, integrating prior probabilities with observed and missing variant data.
- Quant explicitly models **mode of inheritance impacts on variant occurrence probabilities**, Hardy-Weinberg Equilibrium-based priors, and genome-wide prior probabilities of pathogenic variants per gene; this detail is absent or not emphasized in the patent.
- The patent describes a **machine learning pipeline to predict pathogenicity of variants using multiple data sources and evidence models**, but does not clearly disclose the integration of variant observation probabilities with error modeling (false negatives) to yield **posterior probability of a diagnosis** with credible intervals reflecting certainty.
- Use of **TP, FP, TN, FN outcomes and diagnostic-level Bayesian updating** distinguishing Quant’s approach is not explicitly recited.
- Quant’s emphasis on **scalable genome-wide modeling for clinical diagnostic certainty reporting** and providing uncertainty bounds (credible intervals) for diagnosis rather than just pathogenicity predictions is distinctive.
- The patent’s claims and description focus on variant-level pathogenicity modeling rather than directly supporting clinical genetic diagnosis confidence accounting for **missing variant data or sequencing coverage gaps**.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:**  
This patent discloses a complex Bayesian causal model for variant pathogenicity interpretation integrating multiple evidence types, which resembles the theoretic underpinning of Quant’s use of causal Bayesian models and evidence integration. However, it lacks explicit disclosure of the unique features of Quant that center on computing **genome-wide prior probabilities combined with observed and unobserved variant information** to yield a **posterior probability of a genetic diagnosis accounting for false negatives and detection uncertainty**. Quant’s modeling of TP, FP, TN, FN outcomes, Hardy-Weinberg-based variant occurrence priors, inheritance mode modeling, and diagnostic confidence intervals are not clearly described in this patent. This suggests that despite related methodology, the patent does not explicitly block Quant’s core innovation, but nevertheless, the strong similarity in Bayesian causal modeling to variant interpretation indicates potential overlap meriting further expert legal consideration.
