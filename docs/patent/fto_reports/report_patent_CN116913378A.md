## Patent/Publication Analysis

### Reference #1

- **Title:** Method and system for detecting homozygous regions of genome based on low-depth sequencing data
- **Publication No.:** CN116913378A
- **Publication Date:** 2022-02-04
- **Link:** https://patents.google.com/patent/CN116913378A/en

#### Abstract (excerpt)

> "The invention discloses a method and a system for detecting a genome homozygous region based on low-depth sequencing data ... calculating likelihood values for each SNP locus belonging to a normal region or homozygous region ... to judge regions of homozygosity using low-depth whole genome sequencing data ..."

#### Relevant Overlaps

- Uses low-depth whole genome sequencing data (0.1×–1× coverage).
- Analyzes SNP allele counts (counts of alleles A and B from aligned base sequences) to compute likelihoods that a genomic region is homozygous or normal.
- For each SNP locus, calculates marginal (edge) likelihood values under normal and homozygous genotype distribution models.
- Aggregates per-SNP likelihoods across genomic windows to compute joint likelihoods of normal vs homozygous regions.
- Applies a Bayesian or likelihood ratio test with prior probabilities to decide if a genomic window is homozygous.
- Incorporates population allele frequency, sequencing error rate, and individual inbreeding coefficient in likelihood calculations.
- Uses a statistical model with binomial distributions weighted by genotype probabilities.
- The method results in detecting runs of homozygosity (ROH) genome-wide under very low sequencing depth.
- Employs a mathematically rigorous model incorporating genotype distributions, sequencing errors, coverage counts of alleles, and prior probabilities.
- Uses overlapping windows sliding over chromosomes to call homozygous segments.

#### Key Differences

- The patent focuses exclusively on detecting homozygous regions (ROH/UPD) from low-depth sequencing data.
- Quant’s focus is on genome-wide Bayesian estimation of disease-causing variant presence, integrating prior probabilities with observed variant calls and false negative modeling for variant pathogenicity and genetic diagnosis confidence.
- This patent does not address calculating or integrating prior probabilities of disease-causing variants, nor does it model true/false positives/negatives for genetic diagnosis certainty.
- It primarily models genotype states of SNPs for homozygosity detection, not pathogenicity or diagnostic probability.
- The likelihood framework here applies to locus-level genotype states in the context of homozygosity, without combining with clinical variant pathogenicity or inheritance mode priors.
- Quant’s technology computes posterior probabilities of carrying a causal variant integrating patient variant data with population and clinical prior data; this patent estimates homozygous regions via low-depth sequencing based on allele count likelihoods.

#### Conclusion

Not blocking for Quant.

**Rationale:** Although both use statistical models and Bayesian likelihood computations over genomic windows, the patent is narrowly focused on identifying homozygous regions (e.g. runs of homozygosity) from low-depth sequencing data using allele counts and genotype models. It does not address the fundamental aspects of Quant’s innovation: integrating prior probabilities of variant pathogenicity with observed/missing variant data to derive Bayesian posterior probabilities of a complete genetic diagnosis. The methodological aims and outputs are distinct, centered on different genetic features and clinical interpretations.
