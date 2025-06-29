## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of analyzing genetic variants based on genetic material
- **Publication No.:** WO2021046461A1
- **Publication Date:** 2021-03-11
- **Link:** https://patents.google.com/patent/WO2021046461A1/en

#### Abstract (excerpt)

> "Provided are methods for identifying gene variants associated with a phenotype, for example by inferring and scoring of structural variants from whole-genome or exome data or processing a set of genes against a known set of genes having known variants associated with a set of phenotypes, and optionally determining how likely each of the genes are to cause the phenotype."

#### Relevant Overlaps

- Uses *badges* constructed to span exon and regulatory regions to analyze variant data.
- Infers ploidy states of these badges based on sequencing read depth and allele frequency to identify structural variants (SVs) causing gene dosage changes.
- Combines SV inference and prioritization with phenotypic information and variant deleteriousness scores.
- Implements a scoring system for pathogenicity, including Bayes factor calculations combining variant, gene burden, and phenotype data.
- Prioritizes compound heterozygous genotypes combining SNVs/indels and larger SVs.
- Uses databases like gnomAD, ClinVar, OMIM as inputs.
- Applies machine learning and burden testing for variant and gene prioritization.
- Reports credible intervals, prioritizes gene–phenotype associations, and outputs detailed diagnostic reports.
- Explicitly addresses false positive rates in SV calling by inferring SVs from small variant data, reporting PPV over 95%.
- Integrates variant calls, phenotypes, pedigree, and prior knowledge in a Bayesian framework to assess likelihood of pathogenicity.
- Utilizes allele frequencies and observed sequence data to estimate variant zygosity and SV presence.

#### Key Differences

- The patent’s core innovation focuses heavily on structural variant inference from small variant calls ("badges" method) and associating these SVs with disease using a Bayesian prioritization integrating phenotypes.
- Quant is described as a genome-wide variant probability platform that focuses on calculating **prior and posterior probabilities of disease-causing variants incorporating false negatives**, explicitly modeling the **confidence of a complete genetic diagnosis** genome-wide, accounting for observed and unobserved variants (TP/FN/TN/FP).
- The patent does not address integration of false negative probabilities or evaluate diagnostic completeness/uncertainty via credible intervals genome-wide; rather, it focuses on inferring SVs and prioritizing candidate causal variants from variant data using phenotype priors.
- Quant’s novelty emphasizes explicit Bayesian integration of prior probabilities with observed variant data to yield a posterior probability of a complete genetic diagnosis—this holistic genome-wide diagnostic confidence modeling is not specifically described in the patent.
- The patent uses Bayesian factors but in the context of scoring and prioritizing variants/gene–phenotype matches, not to quantify overall diagnostic certainty including false negatives/missing data.
- The methods here focus on inferring structural variants from small variants and prioritizing them with phenotypes; Quant’s focus is broader, integrating modes of inheritance and prior probabilities across all variants, observed or unobserved.
- The patent does not mention modeling the probabilities of false negatives or explicitly integrating TP/FN/TN/FP counts in a diagnostic confidence framework as Quant does.
- Quant’s emphasis on genome-wide, scalable credible interval production for diagnosis is unique compared to the patent’s gene-by-gene SV scoring and prioritization.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although the patent and Quant both use Bayesian methods and phenotype integration for variant prioritization, the patent’s innovation is largely in inferring structural variants via the badges method and scoring them with phenotype-based Bayesian approaches. Quant’s core novelty lies in genome-wide calculation of prior probabilities and direct modeling of diagnostic confidence by integrating observed and missing variant data, including explicit false negative modeling producing posterior probabilities and credible intervals. The patent does not inherently claim or disclose this comprehensive diagnostic confidence calculation or the specific use of TP/FN/FP/TN frameworks to model diagnostic certainty. Therefore, no blocking overlap exists with Quant’s unique approach.
