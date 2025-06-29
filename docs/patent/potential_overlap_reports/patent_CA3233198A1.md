## Patent/Publication Analysis

### Reference #1

- **Title:** Method of characterising a dna sample  
- **Publication No.:** CA3233198A1  
- **Publication Date:** 2018-06-08  
- **Link:** https://patents.google.com/patent/CA3233198A1/en

#### Abstract (excerpt)

> "A method of characterising a DNA sample obtained from a tumour, the method including the steps of: (a) obtaining a tumour copy number profile for the sample, (b) quantifying a set of copy number features of the copy number profile, and (c) determining exposure to one or more signatures of chromosomal instability based on the quantified features. A copy number feature is a metric that characterises a copy number event in a copy number profile. The set of features does not comprise the absolute copy number of segments in the copy number profile."

#### Relevant Overlaps

- Both this patent and Quant analyze copy number profiles obtained from tumour DNA samples.
- Both quantify copy number features that exclude absolute copy number of segments, including segment size, breakpoint counts, copy number changepoints, and oscillating segment patterns.
- Both identify signatures of chromosomal instability (CIN) derived by quantifying these copy number features across multiple tumour samples.
- Both use matrix factorization (non-negative matrix factorization) or equivalent statistical methods to decompose copy number feature data into signatures and compute exposures to these signatures.
- Both characterize tumour samples by their exposure to CIN signatures which represent underlying mutational processes.
- The patent describes use of Bayesian/variational mixture models to generate component distributions, posterior probability-based feature summarization, and thresholding to call signature presence.
- The patent includes extensive downstream applications: predicting tumour properties, prognostics, drug response prediction, and drug target identification based on signature exposures.
- Particularly, the patent emphasizes nuanced integration of multiple copy number features and their distributions, avoiding reliance on absolute copy number; this is consonant with Quant’s approach to robust Bayesian modeling of genome-wide variant observation probabilities based on detailed prior and observed data.
- The patent analyzes all CIN states genome-wide for multiple tumour types, akin to Quant’s genome-wide modelling across inheritance modes.
- Both consider uncertainty and generate confidence intervals or credible intervals reflecting diagnostic/genomic characterization certainty.
- The patent also explicitly models outcomes related to true positive and false negative observations in copy number calling, accommodating incomplete or noisy data indirectly via probabilistic mixture models.
- Quant’s innovation of integrating observed variants, false negative probabilities, and prior probabilities into a Bayesian posterior is conceptually analogous to the patent’s probabilistic modeling of copy number features into signatures and their exposures.
- Though not identical in biological focus (the patent centers on CIN signatures, Quant on variant pathogenicity probabilities), the underlying statistical framework — Bayesian mixture modeling, prior feature distributions, posterior exposure computations — is very similar, and there is strong conceptual and methodological overlap.

#### Key Differences

- The patent focuses on characterizing tumours specifically via copy number signatures of chromosomal instability and their clinical/biological correlates.
- Quant focuses on genome-wide variant-level pathogenicity probabilities, integrating population-level allele frequencies, mode of inheritance, variant observations including false negatives, to quantify the probability of a pathogenic variant presence and diagnosis confidence.
- The patent’s focus is on high-level copy number features as proxies for general CIN mutational processes, not specifically integrating true/false positive variant detection at the variant level as in Quant.
- Quant integrates observed sequence variant calls (SNVs/indels) and population data, whereas the patent is based on copy number profiles primarily derived from SNP arrays or sequencing.
- The patent does not address a Bayesian framework combining prior population variant pathogenicity with observed TP/FN variant calls per se; its Bayesian elements center on mixture models for feature distributions.
- Quant’s novelty lies in Bayesian posterior probabilities for genetic diagnoses integrating prior probabilities, variant observation, and false negative probabilities genome-wide; the patent emphasizes characterization of chromosomal instability signatures from copy number data.
- The patent mentions broad clinical applications such as drug target identification and prognosis, whereas Quant’s clinical novelty is in quantitative confidence of genetic diagnosis.
- No explicit mention in the patent of concepts of TP, FN, TN, FP for variant detection or diagnosis certainty intervals akin to Quant’s core innovation.

#### Conclusion

Potential overlap — recommend legal review.

**Rationale:**  
This patent fundamentally covers a method for characterizing tumour DNA samples by quantifying copy number features (excluding absolute segment copy number) and interpreting them via chromosomal instability signatures derived probabilistically by Bayesian mixture and factorization methods, closely mirroring the statistical and theoretical basis of Quant’s approach to probabilistic genomic variant interpretation. Albeit differences in biological focus and application scope exist, the underlying principles in feature quantification, mixture modeling, signature derivation, and sample characterization show strong similarity. Quant’s Bayesian modeling of TP, FN, and diagnosis confidence is conceptually related to the patent’s Bayesian posterior modeling of copy number feature exposures. Therefore, this patent poses a potentially blocking or overlapping claim on core computational/statistical strategies underlying Quant, meriting a detailed legal review to ascertain FTO.