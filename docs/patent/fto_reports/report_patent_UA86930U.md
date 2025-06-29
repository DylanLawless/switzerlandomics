## Patent/Publication Analysis

### Reference #1

- **Title:** Method for genetic diagnostics of Parkinson's disease
- **Publication No.:** UA86930U
- **Publication Date:** Not explicitly stated (publication on patents.google.com indicates filing date prior to 2023)
- **Link:** https://patents.google.com/patent/UA86930U/en

#### Abstract (excerpt)

> "A method for genetic diagnostics of Parkinson’s disease includes genotypic registration of mutation L444P (T>C) in gene GBA with the method of polymerase chain reaction with following restriction. The primers are used: 5-GGAGGACCCAATTGGGTGCGT-3 and 5-ACGCTGTCTTCAGCCCACTTC-3, with the mode of amplification: 95 °C for 30 seconds, 60 °C for 30 seconds, 72 °C for 30 seconds. Restriction is carried out by means of restrictase Neil, and at presence of the products of restriction specific for the C allele with lengths 536 bp and 102 bp at electrophoretic separation of fragments in agarous gel the presence of risk of development of Parkinsons disease is diagnosed."

#### Relevant Overlaps

- Both the patent and Quant involve genetic variant analysis related to disease diagnosis.
- Both rely on detection of specific mutations with implications for disease risk.
- Use of genotyping (PCR and restriction digest) for identifying risk alleles.

#### Key Differences

- The patent describes a laboratory method for detecting a single specific mutation (L444P (T>C) in GBA gene) via PCR and restriction fragment length polymorphism (RFLP) assay.
- It is a direct genotyping assay assessing presence or absence of one variant, not a genome-wide or multi-gene probabilistic framework.
- There is no mention of integrating prior probabilities, population allele frequencies, or Bayesian posterior calculations.
- The patent does not include any modeling of true positive or false negative variant observations.
- No computational or statistical framework is described for combining observed and missing variant data.
- No credible intervals or quantitative confidence estimates of diagnosis.
- Focus is limited to Parkinson's disease and a single mutation, not a scalable genome-wide platform or inheritance-mode stratified probabilities.
- No integration of multiple data sources (ClinVar, gnomAD, PanelApp) or functional annotation for a broad variant pathogenicity assessment.

#### Conclusion

Not blocking for Quant.

---

This patent covers a focused wet-lab genotyping assay for a particular mutation in Parkinson’s disease gene GBA. It does not disclose or claim any computational or Bayesian framework to integrate prior probabilities with observed genetic variants including modeling of FP/FN or credible intervals for diagnosis confidence — the core novelty of Quant. Hence, no technical overlap threatens freedom to operate.
