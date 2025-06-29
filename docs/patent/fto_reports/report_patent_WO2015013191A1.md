## Patent/Publication Analysis

### Reference #1

- **Title:** Methods, systems, apparatus and their optimization for effective clinical analysis and conveying results thereof
- **Publication No.:** WO2015013191A1
- **Publication Date:** 2015-01-29
- **Link:** https://patents.google.com/patent/WO2015013191A1/en

#### Abstract (excerpt)

> "Disclosed are methods, systems, apparatus, e.g. computational and technological methods, systems, apparatus and components thereof and their optimization to arrive at effective clinical analysis of diseases or ailments, e.g. cancer, so that a subject suffering from the disease or ailment and in need of therapeutic intervention for that disease or ailment may be provided with personalized treatment options or considerations."

#### Relevant Overlaps

- The patent describes a computational pipeline for evaluating and ranking somatic gene variants in tumor tissue by performing whole-exome sequencing on both patient tumor tissue and archival tumor samples.
- It emphasizes determination of concordance between mutations seen in patient tumor vs. archival samples.
- It utilizes databases of genes with therapeutic, prognostic or diagnostic implications for cancer.
- Variants are sorted by clinical and biological relevance, with steps to promote or demote variants of uncertain significance based on scoring related to known mutations, kinase domain mutations, copy number changes with clinical impact, pathway involvement, and presence in cancer gene databases.
- The patent contemplates clinical interpretation for personalized treatment options.
- The claims pertain to methods of identifying, evaluating, and ranking somatic variants from WES data to guide personalized tumor treatment.
- The specification includes high-throughput sequencing of FFPE samples and achieves clinical turnaround times for WES.
- Inclusion of cancer gene knowledge bases (TARGET-like) for variant annotation and heuristic ranking resembling PHIAL's approach.
- Use of large public databases such as COSMIC, ClinVar, and mutational significance scoring.
- Emphasis on computational workflows and curation pipelines for clinical decision support.
  
#### Key Differences

- The patent does **not** disclose or claim the use of explicit **prior probabilities** based on genome-wide modeling of variant occurrence under Hardy-Weinberg Equilibrium or comprehensive Bayesian integration of observed and unobserved variants to calculate a posterior probability of a complete genetic diagnosis.
- It does **not** mention or claim the integration of **false negative (FN) probability modeling** to account for unobserved variants or poorly sequenced regions.
- The focus is on **ranking and sorting individual somatic variant findings** based on clinical relevance and database annotations, not on quantifying the **confidence** or statistical certainty of a genetic diagnosis using a Bayesian framework incorporating true positive (TP), false positive (FP), true negative (TN), and false negative (FN) assessment.
- The patent addresses mainly **tumor somatic variant evaluation** for oncology precision medicine, whereas Quant's innovation applies more broadly genome-wide for rare disease genetic diagnosis certainty.
- The system is heuristic and rule-based for variant annotation and ranking; no probabilistic or Bayesian model combining genome-wide priors with patient-level variant calls is described.
- No mention of genome-wide **prior probability calculation** per gene or variant integrating mode of inheritance or population allele frequencies to compute expected pathogenic mutation occurrence.
- No mention of credible intervals or uncertainty quantification for diagnostic certainty.
- The end goal is clinical interpretation and treatment selection rather than formal probability estimates of diagnosis confidence.
- Use of **PanelApp, gnomAD-based models, or detailed Bayesian integration of priors and observed variant data** as in Quant is absent.

#### Conclusion

Not blocking for Quant.

---

**Rationale:** While the patent covers clinical WES of tumor and archival samples, database-driven variant annotation and heuristic ranking for clinical relevance, it lacks the core technical elements unique to Quant: genome-wide **prior probability modeling** of disease variants under genetic equilibrium, explicit modeling of **false negatives**, and Bayesian integration of these priors with observed/missing variant data to compute a **posterior probability for a complete genetic diagnosis** along with diagnostic certainty intervals. The overlap is limited to general clinical genomic interpretation and variant annotation heuristics. Thus, it does not block Quant’s novel approach.
