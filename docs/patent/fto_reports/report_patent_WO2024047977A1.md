## Patent/Publication Analysis

### Reference #1

- **Title:** Genetic analysis method whereby two or more types of tests can be performed
- **Publication No.:** WO2024047977A1
- **Publication Date:** 2024-03-14 (publication date on patent office site, approximate)
- **Link:** https://patents.google.com/patent/WO2024047977A1/en

#### Abstract (excerpt)

> "The present invention is a genetic analysis method for analyzing a group to be analyzed satisfying two or more conditions selected from (i) to (iii) and includes two or more steps selected from a phenotypic analysis step, a paternity testing step, and an index calculation step for evaluating chromosome number abnormality."

#### Relevant Overlaps

- Uses analysis of multiple single nucleotide polymorphism (SNV) loci ("analysis target group") with defined conditions on:
   - at least 10% of loci known to associate with phenotype,
   - minor allele frequency (MAF) of 1%-50% and physical spacing >20kb between loci,
   - presence of loci on chromosomes 13, 18, 21, X and Y constituting ≥10% of loci.
- Employs genotyping of nucleic acid samples from child, father and/or mother.
- Performs:
   - Phenotype analysis based on genotyping, estimating probability minor-allele-related phenotypes manifest (but excluding diagnosis of human disease),
   - Paternity/maternity testing with computation of Paternity Index (PI), combined PI (CPI), Maternity Index (MI) and combined MI (CMI) based on SNV data,
   - Calculation of Z-scores or normalized chromosome values (NCV) from sequencing read depths or signal intensities to evaluate chromosome copy number abnormalities.
- Uses Bayesian/statistical methods in paternity testing to compute PI/MI incorporating false positive/negative rates, mutation rates, and allele frequencies.
- Considers sample types for genotyping including circulating cell-free DNA (cfDNA) from maternal blood for noninvasive prenatal testing.
- Provides combined testing in one assay for at least two of phenotypic analysis, parentage testing, chromosome abnormality detection.
- Claims emphasize:
   - Defining an analysis target SNV set meeting multiple conditions,
   - Performing genotyping,
   - Computing indices for 2 or more of phenotypic analysis, parentage testing, chromosome number abnormality detection in one analysis,
   - Detailed equations and conditions for computing PI/MI and Z-score/NCV.

#### Key Differences

- The claimed invention focuses on combining separate genetic tests: DTC-type phenotype risk, parentage testing, and chromosome number anomaly detection in a single assay using a specially designed SNV panel.
- Although it uses Bayesian/statistical inference for parentage, it does **not** claim integrating:
   - genome-wide prior probabilities of observing disease-causing variants,
   - integration of possible false negatives (FN) at the variant or gene level,
   - Bayesian posterior probabilities quantifying diagnostic certainty in a clinical diagnostic sense,
   - nor does it link disease-causing variant probabilities genome-wide for diagnosis.
- The phenotypic analysis explicitly excludes diagnosis of whether a human is diseased.
- Parentage and chromosome number analyses rely on classical indices (PI, MI, Z-scores, NCV) used across the field.
- Quant’s key novelty is quantifying prior and posterior probabilities of **disease-causing variants** under inheritance models, integrating observed and missing variants data, which is clearly absent here.
- The patent focuses heavily on parentage and phenotype correlation testing and chromosomal aneuploidy screening panels; it does not address genome-wide pathogenic variant probability estimation nor variant-level diagnostic confidence intervals.
- The described statistical methods for parentage testing based on SNVs, false positive/negative rates, mutation rates, and CI computation are conventional in forensic genetics and genetic diagnostics, lacking Quant’s innovation of Bayesian integration over genome-wide variant priors and false negative modeling for diagnosis certainty.

#### Conclusion

Not blocking for Quant.

---

**Summary:** While this patent discloses a method to jointly perform parentage testing, phenotypic risk analysis (non-diagnostic), and chromosome number abnormality detection in a single genotyping assay, it fundamentally differs from Quant’s technology. Quant innovates in providing **genome-wide prior probabilities of pathogenicity across all genes**, combined with Bayesian posterior calculation that integrates observed and potentially missing variant data (false negatives) to quantify the **diagnostic certainty** of a complete genetic diagnosis. This patent lacks such integration or inference of disease-causing variant probabilities and focuses instead on multiplex SNV panels for phenotype correlation, parentage index calculations, and chromosomal counting, which are well-known approaches. Therefore, there is no material overlap in the core mathematical/statistical approach or output; usage of Bayesian models in parentage testing alone does not create overlap. Hence, this patent is not considered blocking for Quant.
