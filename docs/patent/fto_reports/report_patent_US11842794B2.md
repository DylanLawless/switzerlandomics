## Patent/Publication Analysis

### Reference #1

- **Title:** Variant calling in single molecule sequencing using a convolutional neural network  
- **Publication No.:** US11842794B2  
- **Publication Date:** 2023-10-24  
- **Link:** https://patents.google.com/patent/US11842794B2/en  

#### Abstract (excerpt)

> "Systems and methods for variant calling in single molecule sequencing from a genomic dataset using a convolutional deep neural network... outputting predicted categorical output variables including alternate base, zygosity, variant type, and length of an indel."

#### Relevant Overlaps

- Both Quant and this patent analyze genomic variants.  
- Use of probabilistic modeling related to variant detection is common in variant calling.  
- The patent deals with identifying variant characteristics (type, zygosity, indel length) which are categories similar to those acknowledged by Quant for variant inputs/outputs.  
- Both use sequencing read data as inputs, transforming them into structured data forms (the patent uses multi-dimensional tensors of read counts around variant sites).  
- The patent uses machine learning (deep convolutional neural networks) to predict variant characteristics probabilistically, incorporating zygosity (heterozygote/homozygote), variant type and indel size—quantities also meaningful in disease variant probability estimation.  
- The patent explicitly considers true positives (TP), false negatives (FN), and false positives (FP) in benchmarking variant calls, analyzing F1 scores, precision, recall, which overlaps conceptually with Quant’s handling of TP/FN in assessing diagnostic certainty.

#### Key Differences

- The patent’s core technical method is to improve variant calling accuracy through a specialized convolutional neural network architecture designed to classify and detect variants from sequencing reads, particularly single molecule sequencing data.  
- The method’s outputs are categorical variant calls (alternate base, zygosity, variant type, indel length), not a genome-wide prior or posterior probability of disease-causing variants or a Bayesian integration of observed/missing variants for diagnosis certainty.  
- There is no teaching or claim of calculating genome-wide prior probabilities under Hardy-Weinberg equilibrium or integrating missing data/false negatives to compute a posterior probability of a complete genetic diagnosis.  
- The patent’s Bayesian/statistical components are limited to cost function optimization in deep learning (minimizing a cost over predicted categories) and do not extend to clinical diagnostic probability estimation or credible interval reporting as in Quant.  
- The patent focuses on calling and validating variants (identifying their presence and nature) but does not address or attempt to calculate the likelihood of the patient harboring a pathogenic variant in a gene with consideration of inheritance modes and genome-wide probabilistic modeling.  
- Public databases (gnomAD, ClinVar) and variant scoring are not discussed as integrated inputs for prior pathogenicity information; rather, this invention focuses on signal processing of sequencing reads.  
- The patent’s validation module for candidate variants differs fundamentally from Quant’s approach in that it is focused on variant call classification correctness rather than diagnostic confidence or disease probability quantification.

#### Conclusion

**Not blocking for Quant.**

**Rationale:** While both Quant and the patent relate to genetic variant analysis, this patent focuses narrowly on variant detection and classification from sequencing data via neural networks. It does not disclose or claim the key innovative step of Quant—namely, computing genome-wide prior probabilities of pathogenic variants, integrating observed data with false negatives under inheritance models, and outputting Bayesian posterior probabilities with credible intervals for genetic diagnosis certainty. The overlap is at the level of variant categorization and relevant metrics like TP/FN, but this patent does not cover Quant’s unique theoretical framework for diagnostic probability estimation and uncertainty quantification.
