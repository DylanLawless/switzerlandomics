## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and materials for identification of canine pedigree
- **Publication No.:** JP5656678B2
- **Publication Date:** 2015-05-20 (Grant date)
- **Link:** https://patents.google.com/patent/JP5656678B2/en

#### Abstract (excerpt)

> *Abstract is not separately provided; method relates to determining the contribution of one or more canine populations to a canine genome by analyzing identity of alleles at marker sets and comparing to a database of canine population profiles. The method uses microsatellite markers, SNP markers, and Bayesian or clustering algorithms to assign individual dogs to breeds, and can detect admixed genomes including parent and grandparent contributions.*

#### Relevant Overlaps

- The patent discloses a method for determining genetic contributions of one or more canine populations (breeds) to an individual canine genome by:
  - Obtaining identity of one or both alleles at multiple marker sets (e.g., microsatellite markers, SNPs).
  - Comparing the observed genotype to a database of population profiles that contain allele frequencies or genotypes.
  - Employing Bayesian model-based clustering or assignment algorithms (such as STRUCTURE or other clustering approaches).
  - Assessing probabilities that a particular population contributed to the test genome.
  - Explicitly modeling admixed individuals and estimating ancestral contributions up to grandparent or great-grandparent level.
  - Providing reports/documents about breed contributions, including credible intervals or probabilities.

- The methods extensively utilize genotype data (microsatellites and SNPs), allele frequencies, Bayesian clustering and assignment algorithms.

- The patent further addresses:
  - Modeling of false negatives or missing data is implied through statistical treatment but not explicitly described as estimation of diagnostic certainty.
  - Hierarchical or nested Bayesian clustering to resolve closely related populations.
  - Use of credible intervals or posterior probabilities to express population assignment confidences.

- The patent’s core claims are to methods quantifying breed (population) contributions to individual genomes integrating prior allele frequencies and individual genotype calls, including admixture modeling at multi-generational levels.

#### Key Differences

- The subject matter relates specifically to canine population genetics (dog breed identification), not human genomics or disease-causing variant analysis.

- The patent focuses on assignment of individual genomes to populations and admixture estimation using genotype data, rather than calculating probabilities of harboring pathogenic variants at a genome-wide scale.

- There is no explicit mention or teaching of integrating prior probabilities of observing pathogenic variants with observed/missing variant data to obtain Bayesian posterior probabilities of a complete genetic diagnosis.

- The patent does not incorporate concepts of true positives (TP), false negatives (FN), or diagnostic credible intervals related to pathogenic variant detection or genetic diagnosis confidence.

- Although Bayesian modeling is used for population assignment and admixture estimation, the theoretical framework and intended output differ fundamentally from Quant’s approach for clinical genetic diagnostics.

- The Bayesian clustering and admixture methods are known in population genetics and breed assignment; the patent applies these to canines and their breeds, not to human variant pathogenicity and diagnostic confidence.

- The datasets and markers are related to breed identification; Quant’s method uniquely integrates mutational and inheritance mode specific prior probabilities with patient data to estimate diagnosis likelihood.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
This patent regards methods for canine breed assignment and admixture estimation using microsatellite and SNP marker genotype data and Bayesian/clustering algorithms. While it employs Bayesian models and allele frequency databases to probabilistically assign genomes to populations, there is no teaching or suggestion of the unique integration in Quant of prior probabilities of pathogenic variant occurrence with observed and missing variant data for generating Bayesian posterior probabilities of a complete genetic diagnosis. It also lacks any explicit modeling or use of diagnostic concepts such as TP, FN, and credible intervals related to clinical diagnostics. The technical domain (canine breed genetics) and the problem addressed (breed contribution assignment) differ substantially from Quant’s human-genome-wide variant pathogenicity and diagnosis certainty framework. Therefore, this patent does not appear to block Quant.
