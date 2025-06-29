## Patent/Publication Analysis

### Reference #1

- **Title:** Assay for quantitating the extent of methylation of a target site
- **Publication No.:** US20220228214A1
- **Publication Date:** 2022-07-21
- **Link:** https://patents.google.com/patent/US20220228214A1/en

#### Abstract (excerpt)

> "An assay to quantify extent of methylation in a DNA sample. Kits and clinical diagnostic assays are also enabled herein, including assays to determine clinical phenotypes based on extent of methylation of a DNA target site."

#### Relevant Overlaps

- The patent describes a method for quantitating DNA methylation extent at target genomic sites through bisulfite treatment followed by real-time PCR amplification and high-resolution melt (HRM) analysis.
- It uses control DNA samples to generate standard curves for DNA concentration and methylation percentage versus signal strength (fluorescence), thereby enabling quantitative measurement of methylation ratios.
- Incorporates an algorithm to assess quality control ranges (e.g. dynamic linear range of amplification, stable melting range) for improved accuracy.
- Clinical relevance is emphasized by correlation of methylation extent with neurological and other disorders, including Fragile X Syndrome (FXS), autism spectrum disorder, sex chromosome aneuploidies, and imprinting disorders (Prader-Willi and Angelman syndromes).
- The assay provides methylation ratios with credible intervals and underlying statistical rigor analogous to Quant’s computation of probabilities and credible intervals.
- Kits and software to implement the dosage calculation and interpretation, including multivariate analyses and integration into clinical workflows, are disclosed.
- The patent’s claims explicitly encompass bisulfite treatment, serial dilution, real-time PCR, HRM melt curve analysis at a temperature providing maximal difference between methylated and unmethylated DNA, and conversion of fluorescence signal to methylation percentage via standard curves.
- The patent’s technology provides quantitative methylation measures used as biomarkers for diagnosis, prognosis, and treatment monitoring in human disease contexts.

#### Key Differences

- The patent focuses exclusively on methylation quantitation using bisulfite conversion and melt curve PCR assays. It measures epigenetic DNA methylation levels.
- Quant is a genomics platform that integrates *prior probabilities* of variant pathogenicity under population genetics models, incorporates observed and unobserved variant data (TP/FN/FP/TN) to compute Bayesian posterior probabilities of a *complete genetic diagnosis*.
- Quant’s novelty lies in genome-wide variant pathogenicity probability modeling combined with false negative modeling and diagnostic confidence intervals — not in methylation quantitation.
- The patent does not address variant observation probabilities under Hardy-Weinberg equilibrium or modeling of inheritance modes for germline variant interpretation.
- The technology does not integrate prior probabilities with patient variant calls in a Bayesian framework focusing on diagnostic certainty for *genetic variants*.
- While both technologies output quantitative probabilistic metrics related to DNA-based diagnostics, the underlying biological targets and computational models fundamentally differ (methylation level vs variant pathogenicity and diagnosis certainty).
- Use of TP/FN terminology in the patent is absent; it centers on methylation measurement accuracy but not on variant classification performance metrics in a Bayesian diagnostic model.
- The patent is circumscribed to methylation of selected target loci (e.g. FMR1 locus, SNRPN promoter), not genome-wide variant probability frameworks.

#### Conclusion

Not blocking for Quant.

---

**Summary:**  
This patent relates to quantitative DNA methylation assays employing bisulfite conversion and PCR melt curves, producing methylation ratio outputs for diagnostic use. Its approach, data type, and computational modeling are distinct from Quant’s genome-wide Bayesian pathogenic variant probability platform, which quantifies diagnostic confidence integrating prior variant probabilities and false negative modeling. Although both use probabilistic outputs related to genomics, the patent’s focus on methylation measurement does not overlap with Quant’s unique variant pathogenicity integration methodology involving TP/FN modeling and Bayesian diagnostic certainty.
