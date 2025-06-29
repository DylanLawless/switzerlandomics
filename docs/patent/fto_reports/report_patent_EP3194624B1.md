## Patent/Publication Analysis

### Reference #1

- **Title:** Methods for diagnosis, prognosis and monitoring of breast cancer and reagents therefor  
- **Publication No.:** EP3194624B1  
- **Publication Date:** Priority date 2014-09-15  
- **Link:** https://patents.google.com/patent/EP3194624B1/en  

#### Abstract (excerpt)

> The disclosure identifies differentially methylated regions (DMRs) specific to breast cancer and subtypes including triple negative breast cancer (TNBC). Particularly, DNA methylation profiles of WT1/WT1-AS gene regions correlate with TNBC prognosis, with differential methylation associating with survival outcomes. Methods include determining methylation of CpG dinucleotide sequences within such regions relative to reference methylation levels for prognosis, therapeutic prediction, or disease monitoring.

#### Relevant Overlaps

- Use of methylation status of specific CpG dinucleotides within genomic regions as diagnostic and prognostic biomarkers for cancer, including breast cancer and TNBC.  
- Correlation of epigenetic marks with clinical outcomes (survival etc.).  
- Utilization of microarray and sequencing data and statistical analyses to stratify patient subtypes based on methylation profiles.  
- Application of differential methylation relative to a reference level to predict disease state and progression.  
- Detection methods include PCR-based assays, bisulfite treatment, methylation-sensitive restriction enzymes— standard methylation assay techniques.  
- Multivariate and survival analyses to generate prognostic signatures.  
- Design of multiplexed methylation signatures (small probe sets) for classification of TNBC vs. non-TNBC using machine learning (PLS models).  
- Reporting quantitative methylation values and credible classifications based on methylation thresholds.  

#### Key Differences

- The patent focuses exclusively on **methylation biomarkers** and their quantitative assessment in relation to breast cancer diagnosis, subtype classification, and prognosis.  
- It is based on **epigenomic markers** (DNA methylation) rather than **genomic variants or alleles**.  
- Does not discuss or claim any method that:  
  - Calculates prior probabilities of disease-causing **genetic variants** across all genes.  
  - Integrates population allele frequencies and variant pathogenicity classifications.  
  - Models TP (true positive), FP (false positive), FN (false negative), TN (true negative) probabilities to compute a posterior probability of genetic diagnosis.  
  - Employs Hardy-Weinberg equilibrium or Bayesian integration of observed/missing variant data for diagnosis certainty.  
  - Provides a credible interval for the confidence of a **genetic diagnosis** or account for false negatives in sequencing.  
- The analysis is centered on methylation as a **biomarker signature**, not modeling genome-wide variant pathogenicity probabilities or diagnostic confidence of genetic variants.  
- Detection methods are standard for methylation analysis; no claim to Bayesian methods integrating multi-source variant evidence.  
- No mention of genome-wide analysis or genome-wide prior/posterior probabilities linked to diagnosis beyond methylation profiles.  
- The output measures are survival prediction and disease subtype classification, not probabilistic quantifications of a **complete genetic diagnosis**.

#### Conclusion

Not blocking for Quant.

> This patent and publication focus on methylation biomarker signatures for TNBC diagnosis and prognosis, which is distinct from Quant’s genome-wide Bayesian framework for variant pathogenicity probability estimation and integrating TP/FN measures to compute diagnostic certainty of genetic variants. There is no technical overlap with the core method of integrating allele frequencies and variant data via Bayesian models to quantify the confidence in a genetic diagnosis.

---

# Summary

- The patent discloses methylation-based diagnostic and prognostic methods specifically for breast cancer and TNBC.  
- Quant’s novelty relies on Bayesian modeling of genetic variant pathogenic probabilities genome-wide, integrating variant observation and missingness (TP/FN) to produce posterior probabilities and credible intervals regarding genetic diagnosis.  
- No use or mention of variant-level Hardy-Weinberg probability modeling, or Bayesian integration of variant observation/missingness to assess genetic diagnosis confidence in the patent.  
- The technology fields (methylation biomarkers vs. genetic variant probability modeling) and core methods differ substantially.  

Hence, no Freedom-to-Operate block exists from this patent to Quant's technology.
