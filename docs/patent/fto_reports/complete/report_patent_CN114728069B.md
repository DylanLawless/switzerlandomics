## Patent/Publication Analysis

### Reference #1

- **Title:** Polygenic risk score for in vitro fertilization  
- **Publication No.:** CN114728069B  
- **Publication Date:** 2023-03-07 (patent grant date per Google Patents; earliest priority 2020)  
- **Link:** [https://patents.google.com/patent/CN114728069B/en](https://patents.google.com/patent/CN114728069B/en)

#### Abstract (excerpt)

> "Provided are methods for determining disease risk associated with an embryo, comprising constructing a genome of an embryo based on (i) one or more genetic variants in the embryo, (ii) a paternal haplotype, (iii) a maternal haplotype, (iv) a transmission probability of the paternal haplotype, and (v) a transmission probability of the maternal haplotype; assigning a polygenic risk score to the embryo based on the constructed genome of the embryo; determining disease risk associated with the embryo based on the polygenic risk score; and determining the transmission of disease-causing genetic variants and/or haplotypes from the paternal genome and/or maternal genome to the embryo."

#### Relevant Overlaps

- The patent discloses methods integrating phased parental haplotypes, embryo genotyping, and transmission probabilities to reconstruct embryo genomes and predict disease risk.
- It calculates polygenic risk scores (PRS) for embryos by summing effects across multiple loci.
- Combines monogenic disease variant transmission with polygenic risk to output a combined disease risk.
- Incorporates family history and population allele frequency data into risk predictions.
- Uses Bayesian/statistical models for phasing, transmission, and risk estimation.
- Explicit embryo genome construction from parental haplotypes and embryo genotyping.
- Simulation of offspring genomes for donor selection and IVF embryo selection.
- Produces risk reports with estimated disease probabilities across multiple conditions.
- Incorporates uncertainty via recombination and genetic inheritance modeling.
- Uses large reference population data contributions (e.g., UK Biobank).
- Accounts for HLA type effects and phased haplotype risk.
- Claims encompass assignments of polygenic risk scores based on constructed embryo genomes integrating transmission probabilities.
- Employs phased parental genomes rather than only variant pathogenicity scoring.

#### Key Differences

- Quant’s unique innovation is focused on generating Bayesian posterior probabilities of a **complete genetic diagnosis** by integrating prior probabilities of observing disease-causing variants by gene and inheritance mode, with patient-level observed/missing variant data, emphasizing quantification of false negatives and credible intervals on diagnostic certainty.
- The patent centers on polygenic risk scores and combined monogenic/polygenic disease risk in embryo selection and donor choice, not on genome-wide prior probabilities or the explicit modeling of false negative variant detection.
- Although both use Bayesian/statistical methods and inheritance models, the patent’s core lies in risk prediction for embryos via PRS and haplotype transmission, rather than quantifying the confidence of a complete genetic diagnosis in clinical sequencing data.
- Quant emphasizes gene-level prior probabilities under Hardy-Weinberg equilibrium combined with patient-level variant data; the patent focuses on embryo genome reconstruction to estimate disease probabilities and PRS in reproductive contexts.
- The patent addresses preimplantation genetic testing, embryo/donor matching, and risk reduction via selection, which is a distinct application domain from Quant’s clinical diagnostic interpretative framework.
- Use of credible intervals or uncertainty bounds on the probability of **diagnostic completeness** is not clearly indicated in the patent.
- Quant models false negatives explicitly as part of the Bayesian posterior, which is not detailed in the patent.
- The patent’s PRS summation is a known approach, differing from Quant’s prior probability modeling genome-wide per gene and inheritance mode.

#### Conclusion

Potential overlap — recommend legal review.

---

**Summary:**  
This patent shares significant technical overlap with some aspects of Quant’s functionality related to using phased parental haplotypes, embryo genotype data, transmission probabilities, and combining monogenic and polygenic risk scores to estimate disease risk in embryos. However, it is primarily targeted at embryo genome reconstruction and selection in IVF contexts and polygenic risk scoring. Quant’s unique value proposition — employing genome-wide prior probabilities for variant pathogenicity integrated with observed variant calls and false negative quantification to produce Bayesian posterior probabilities of a **complete genetic diagnosis** with credible intervals — represents a distinct conceptual focus and application. Given the substantial technical similarity in Bayesian integration of genetic data for risk prediction but different intended use and modeling emphases, this patent presents a potential overlap deserving careful legal scrutiny for product features involving embryo genome reconstruction, parental haplotype use, or polygenic risk scoring rather than quantification of diagnostic certainty in clinical genetic testing.
