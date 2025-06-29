## Patent/Publication Analysis

### Reference #1

- **Title:** Variant annotation, analysis and selection tool  
- **Publication No.:** EP2614161B1  
- **Publication Date:** 2016-07-06  
- **Link:** https://patents.google.com/patent/EP2614161B1/en

#### Abstract (excerpt)

> [No official abstract available. See Description excerpt below.]

#### Relevant Overlaps

- The patent discloses a computational method (implemented as the VAAST tool) for identifying phenotype-causing genetic variants by comparing variants in target genomes versus background genomes.
- Uses a feature-based scoring approach, aggregating variants within genomic features (genes, exons, pathways, ontology categories) to compute composite likelihood ratios (CLR) assessing disease association.
- Incorporates allele frequency data from cases and controls, and integrates amino acid substitution severity information via databases such as OMIM and BLOSUM, in a unified likelihood framework.
- Uses genotype data from whole-genome, exome, transcriptome sequencing, or genotyping chips; processes data from multiple individuals, including related individuals with pedigree information.
- Applies statistical models including recessive and dominant inheritance modes, with integration of pedigree filtering to exclude Mendelian errors.
- Employs variant filtering/masking to reduce false positives due to sequencing platform biases or repetitive genomic regions.
- Scores both coding and non-coding variants, including synonymous and regulatory variants, with evolutionary conservation-based severity estimates.
- Provides ranked outputs of genes/features with statistical significance estimates to prioritize candidate disease genes/variants.
- Allows integration of tumor (somatic) and germline variants and can be applied to common and rare diseases, complex traits, and model organisms.
- Utilizes permutation-based statistical significance testing and calibrates ranks via large control cohorts.

#### Key Differences

- Quant’s unique focus is on calculating **genome-wide prior probabilities** for observing pathogenic variants per gene and incorporating **false negative (FN) probabilities** of unobserved or missing variants in individual genomes to compute a **Bayesian posterior probability of a complete genetic diagnosis** with credible intervals.
- The patent (VAAST) performs **variant and gene prioritization** via composite likelihood ratio testing comparing variant frequencies and amino acid substitution effects between cases and controls, but does **not model false negative variant observations nor explicitly compute Bayesian posteriors for diagnostic certainty**.
- VAAST’s statistical framework evaluates whether a gene or feature contributes to disease risk based on observed genotypes aggregated over cohorts; it **does not integrate prior disease-causing variant probabilities with observed vs. missing data in a Bayesian model** tailored to single patients or genomes.
- The patent does not explicitly consider ** Hardy-Weinberg Equilibrium-based priors aggregated genome-wide nor the computation of credible intervals** quantifying uncertainty in a **genetic diagnosis for an individual**, which are core innovations of Quant.
- Although VAAST uses pedigree information for filtering and improved accuracy, it is focused on **prioritizing candidate disease genes and variants**, rather than quantifying diagnostic confidence accounting for false negatives under inheritance models.
- VAAST focuses on scoring variants and features for association with phenotypes in **group-level case-control or pedigree studies**, not on providing **patient-specific probabilistic diagnosis outputs** integrating prior probabilities and missing data modeling.

#### Conclusion

Not blocking for Quant.

The patent (EP2614161B1) describes a variant prioritization method based on composite likelihood ratio tests integrating variant frequencies and amino acid substitution severity for cohorts of cases vs. controls or pedigrees (the VAAST tool). While it overlaps broadly with variant annotation, scoring, and gene prioritization concepts, it does **not disclose the unique innovations of Quant**: namely, genome-wide prior probability modeling of pathogenic variants per gene, integration of false negative probabilities for unobserved variants, and computation of Bayesian posterior probabilities (with credible intervals) quantifying the certainty of a **complete genetic diagnosis** in individual patients. The statistical framework and objectives differ substantially, with VAAST focusing on gene/variant ranking and significance at population/cohort level, and Quant focusing on individualized genome-wide probabilistic diagnosis incorporating prior and missing information. Therefore, this patent is not blocking for Quant.
