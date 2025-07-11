## Patent/Publication Analysis

### Reference #1

- **Title:** Analysis method of cell-free nucleic acid and its application
- **Publication No.:** KR20220157976A
- **Publication Date:** 2022-03-02
- **Link:** https://patents.google.com/patent/KR20220157976A/en

#### Abstract (excerpt)

> "Processes and materials for detecting neoplasms from biopsies are described. Processes and materials for constructing sequencing libraries are described... Cell-free nucleic acids can be sequenced and the sequencing results can be used to detect sequences derived from neoplasia."

#### Relevant Overlaps

- Use of Bayesian computational models integrating cfDNA and cellular DNA (e.g. WBC) sequencing data to detect neoplasms by identifying tumor-derived nucleic acid variants (both SNVs and CNVs).
- Incorporation of variant-level features such as VAF, fragment size, genomic location, mutational signatures, and clonal hematopoiesis (CH) filtering.
- Estimating probability/confidence scores for presence of neoplasia from sequencing data.
- Correction for false positives caused by clonal hematopoiesis and introduction of unique molecular identifiers (UIDs) and dual index barcodes to reduce sequencing errors.
- Use of in silico simulations to optimize sequencing workflows and molecular recovery.
- Adjustment of allele fractions based on tumor purity, CNV state, and clonality.
- Multimodal models combining SNV, CNV, and fragmentomic features in a machine learning classification framework.
- Clinical applications including early cancer detection, residual disease monitoring, and treatment decision guidance based on reported confidence intervals and risk scores.
- Methods for constructing sequencing libraries with error-correcting molecular barcodes, hybrid capture with optimized bait sets, and mitigation of oxidative DNA damage (e.g. use of hypotaurine).

#### Key Differences

- Quant’s unique novelty focuses strongly on calculating genome-wide prior probabilities (under Hardy-Weinberg equilibrium) of pathogenic variant observation and integrating observed/missing variant data into a Bayesian posterior probability of a complete genetic diagnosis, explicitly modeling false negatives and reporting credible intervals of diagnostic certainty.  
- The present patent emphasizes detection of tumor-derived cfDNA in oncology, integrating sequencing data for neoplasm detection and clinical intervention. It broadly addresses Bayesian modeling for cfDNA mutation classification, clonal hematopoiesis filtering, and technical improvements to sequencing and variant calling, but there is no explicit disclosure or claim of genome-wide prior probability modeling or integration of inheritance modes as done in Quant.  
- Though Bayesian models are used, these focus on classification of variants as tumor-derived vs. background and cancer detection, rather than providing a prior probability baseline leveraging population genetics assumptions as in Quant.  
- The purpose is neoplasm detection from cell-free nucleic acids (liquid biopsy), not genome-wide quantification of disease-causing variant probabilities and diagnostic completeness certainty.  
- The document does not describe explicitly the mathematical framework of combining TP, FP, TN, FN with prior probabilities across modes of inheritance to generate a posterior credible interval of genetic diagnosis as Quant does.  
- The data inputs, while overlapping (gnomAD, ClinVar etc), are used differently with focus on cancer-specific mutation detection rather than genome-wide variant pathogenicity confidence scoring covering all human genes and diseases.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:**  
The provided patent describes comprehensive methods and systems to detect neoplasm-derived circulating tumor DNA via advanced Bayesian models integrating observed variant calls, accounting for error modes, clonal hematopoiesis, and providing confidence scores for diagnosis. It shares some technical concepts with Quant, such as Bayesian modeling, variant-level feature integration, use of public databases, and technical sequencing enhancements. However, the patent primarily focuses on oncology (ctDNA detection) and does not detail the unique Quant innovation of calculating genome-wide priors under genetic equilibrium, integrating false negative probabilities, and deriving Bayesian posterior probabilities quantifying the certainty of a complete genetic diagnosis across all human disease genes and modes of inheritance. While overlapping in general approach and datasets, the core theoretical framework of Quant is more specialized and focused on prior probability modeling unique to rare inherited disease diagnosis rather than cancer variant detection workflows. Given the overall similarity in type of data and Bayesian approach but substantial difference in core theoretical framework and application domain, there is potential overlap requiring legal review.
