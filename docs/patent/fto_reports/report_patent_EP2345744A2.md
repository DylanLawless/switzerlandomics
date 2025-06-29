## Patent/Publication Analysis

### Reference #1

- **Title:** Non-invasive, prenatal, in-vitro method for detecting the normal healthy condition, the condition of a healthy carrier or the condition of a carrier inflicted with cystic fibrosis
- **Publication No.:** EP2345744A2
- **Publication Date:** 2011-06-08 (priority and filing dates around 2008-2009 based on references)
- **Link:** https://patents.google.com/patent/EP2345744A2/en

#### Abstract (excerpt)

> "The present invention relates to a non-invasive, prenatal in vitro detection method of the normal healthy state, of the healthy carrier state or of the carrier state sick with cystic fibrosis, from fetal cell(s) isolated from a maternal sample comprising the DNA to be tested... The method comprises fetal cell enrichment from maternal blood, their genetic characterization by amplification of genetic polymorphisms to confirm fetal origin, followed by allele analysis of the CFTR gene mutations (notably ΔF508) or linked polymorphic markers."

#### Relevant Overlaps

- Enrichment and isolation of circulating fetal cells from maternal blood, followed by genetic analysis on these isolated cells.
- Use of genetic polymorphism markers (STRs, microsatellites) to confirm fetal origin by demonstrating biparental genetic contribution.
- Detection of known CFTR gene mutations (ΔF508) or, when unknown, linked polymorphic markers via PCR amplification with specific primers.
- Use of PCR amplification on limited DNA quantities from as few as a single cell or pooled small numbers of fetal cells.
- Application of nested PCR with external and internal primers optimized for low DNA amounts.
- Analysis includes allele presence/absence to determine carrier or affected status.
- Use of genotyping to circumvent false negatives like allele drop out (ADO), including pooling multiple cells’ DNA for robust detection.
- Providing a prenatal diagnostic test that is non-invasive, prenatal, and in vitro, focusing on cystic fibrosis.

#### Key Differences

- This patent focuses specifically on cystic fibrosis prenatal diagnosis via isolation of fetal cells and molecular genotyping.
- The method is targeted on a single gene (CFTR) and its mutations or linked polymorphism.
- Quant’s technology is genome-wide, integrating variant prior probabilities over all genes, modeling inheritance modes and false negative probabilities in a Bayesian framework to quantify diagnosis confidence.
- Quant outputs diagnostic posterior probabilities with credible intervals, integrating population allele frequencies and variant pathogenicity priors, rather than detecting or genotyping isolated mutations from fetal cells.
- This patent does not address genome-wide variant probability integration or computation of Bayesian posteriors combining prior and observed/missing variant data at the genome/gene level.
- The method is an experimental molecular diagnostic assay, not a computational framework for probabilistic genetic diagnosis.
- No explicit modeling or inference using true positive, false positive, false negative counts or Bayesian updates of genetic diagnosis certainty.

#### Conclusion

Not blocking for Quant.

---

### Rationale Summary

While this patent discloses a detailed, non-invasive prenatal diagnostic method for cystic fibrosis grounded in isolated fetal cells, polymorphism genotyping, and mutation detection, it is fundamentally a targeted molecular diagnostic method for a specific gene disorder. The core innovation concerns experimental cell isolation, PCR primer designs, and genotyping strategies.

By contrast, Quant is a computational bioinformatics platform that calculates genome-wide prior probabilities for pathogenic variants, integrates patient-observed data and potential false negatives using Bayesian inference, and outputs posterior probabilities of a complete genetic diagnosis with confidence intervals. Quant’s novelty lies in probabilistic modeling of variant observations across all genes and inheritance modes, beyond individual mutation detection.

Therefore, despite some surface similarity, there is no technical overlap regarding Quant’s unique method of combining prior probabilities with observed/missing variant data under a Bayesian framework to quantify diagnostic certainty on a genome-wide scale. The cited patent does not describe or suggest such computational probabilistic modeling, nor does it address or use true positive/false negative conceptual algebra to estimate diagnosis confidence.

---

# Final Recommendation

This patent describes a molecular diagnostic method for non-invasive prenatal cystic fibrosis detection based on fetal cell isolation and genotyping, which is distinct and narrower in scope than Quant’s genome-wide probabilistic genetic diagnosis system.

- **Conclusion:** Not blocking for Quant.
