## Patent/Publication Analysis

### Reference #1

- **Title:** Nucleic acid mutant and application thereof  
- **Publication No.:** CN117701573A  
- **Publication Date:** 2022-07-22  
- **Link:** [https://patents.google.com/patent/CN117701573A/en](https://patents.google.com/patent/CN117701573A/en)

#### Abstract (excerpt)

> "This application relates to the field of genetic engineering technology, specifically to nucleic acid mutants and their applications. Compared with the wild type, the nucleic acid mutant has mutations selected from the following: c.1069delC and c.5942+1G>A. By detecting the presence of these mutants in biological samples, it is possible to effectively detect whether biological samples have autosomal recessive non-syndromic deafness."

#### Relevant Overlaps

- This patent relates to detecting particular pathogenic mutations (c.1069delC and c.5942+1G>A) in the PTPRQ gene responsible for autosomal recessive non-syndromic deafness.
- The patent discloses nucleic acids, proteins, reagents (e.g. probes, primers, antibodies), kits, constructs, recombinant cells, and biological models related to these specific mutations.
- It describes detecting these variants in biological samples for diagnosis.
- The inheritance mode (autosomal recessive) is explicitly addressed.
- Use of primers and sequencing for variant detection is described, as well as use of mutation results for diagnosis.

#### Key Differences

- The patent focuses on identification/detection of specific pathogenic variants (two exact mutations) in one gene (PTPRQ) linked to a particular disease (deafness).
- It does **not** disclose or claim any method integrating **prior probabilities** of variant pathogenicity or genome-wide variant frequency data.
- There is no disclosure of combining observed true positives and potential false negatives to calculate a Bayesian posterior probability of carrying a disease-causing variant.
- Does not describe a genome-wide or multisite probabilistic framework or provide credible intervals for diagnostic certainty.
- No technical teaching or claim on aggregating variant-level probabilities into gene-level probabilities or quantifying diagnostic confidence in a patient’s genome beyond identifying the presence/absence of particular mutations.
- The claimed technology is a standard targeted molecular diagnostic approach focusing on detecting two known mutations, not a probabilistic diagnostic platform.
- The patent does not address genome-wide inference, Hardy-Weinberg equilibrium calculations, mode-of-inheritance integration beyond noting AR inheritance in interpretation.
- No mention or use of TP, FN, TN, FP probabilities nor Bayesian integration beyond confirmatory diagnosis of specific variants.
- Public databases or variant scoring approaches are not employed as part of a global model or prior probability framework.

#### Conclusion

**Not blocking for Quant.**

**Rationale:**  
This patent is narrowly focused on detecting specific mutations in a single gene for deafness diagnosis. It does not teach or claim the unique and central innovations of Quant, which include genome-wide prior probabilities, integrating these with observed patient data and false negative assessments to compute Bayesian posterior probabilities and credible intervals of genetic diagnosis certainty. Merely detecting predefined mutations for diagnosis is not overlapping with Quant’s novel theory and technical approach involving TP/FN modeling and genome-wide Bayesian frameworks.
