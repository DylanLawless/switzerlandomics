## Patent/Publication Analysis

### Reference #1

- **Title:** METHODS FOR ACCURATE COMPUTATIONAL DECOMPOSITION OF DNA MIXTURES FROM CONTRIBUTORS OF UNKNOWN GENOTYPES
- **Publication No.:** US20190380906A1 (derived from priority application 62/522,618)
- **Publication Date:** 2019-12-19 (publication date of US20190380906A1)
- **Link:** https://patents.google.com/patent/US20190380906A1/en

#### Abstract (excerpt)

> "Some implementations presented herein provide computer-implemented methods and systems for deconvolution of nucleic acid mixture samples including nucleic acid (e.g., DNA or RNA) of two or more contributors of unknown genotypes...Because various methods and systems provided herein implement algorithms and processes that use probabilistic mixture models and Bayesian inference techniques, the embodiments provide technological improvements over conventional methods in deconvolution of nucleic acid mixture samples."

#### Relevant Overlaps

- Uses probabilistic mixture models and Bayesian inference techniques to quantify the fractions of nucleic acid contributors in mixture samples.
- Explicit modeling of allele counts at polymorphism loci (including SNPs and STRs).
- Applies binomial and beta-binomial distributions to model sequencing errors, DNA extraction, and amplification variances.
- Computes posterior probabilities of contributor genotypes based on population allele frequencies and genotype priors under Hardy-Weinberg equilibrium.
- Integrates prior distributions over genotypes marginalized in likelihood calculations.
- Accounts for stutter errors, dropout (including dummy alleles for unobserved alleles), and allele configurations in mixture deconvolution.
- Provides methods for estimating confidence intervals of contributor fractions via Cramer-Rao bounds on likelihood Hessians.
- Employs numerical optimization (e.g., quasi-Newton/BFGS) over contributor fraction parameters using likelihood functions.
- Outputs posterior probabilities of contributor genotypes and enables forensic sample contributor identification.
- Implements extensive modeling of genotyping uncertainty with credible intervals and genotype calling confidence thresholds.
- Uses population allele frequencies and genetic relationship priors to inform genotype priors.
- Handles observed true positives and unobserved alleles (natural and mechanistic dropout), akin to consideration of false negatives.
- Probabilistic model explicitly integrates observed allele counts (TP) and models errors/noise (related to FP, FN) to establish likelihood.

#### Key Differences

- Quant focuses specifically on genome-wide prior probabilities of pathogenic variant occurrence integrating patient observed/missing variant data to quantify probability of a complete genetic diagnosis in clinical genomics.
- This patent centers on mixture samples from multiple contributors (e.g. donor-recipient or forensic samples) and quantifies contributors’ fractional presence and genotype deconvolution rather than probability of pathogenicity or diagnostic completeness.
- It is more specialized toward deconvolving nucleic acid mixtures (e.g., cfDNA with multiple contributors) rather than estimating variant causal probability in genetic diseases.
- Quant explicitly models genetic diagnoses integrating sequencing false negatives for diagnosis certainty, whereas this patent models allele mixtures, stutter, dropout, and genotype inference but does not explicitly calculate genome-wide posterior probability of a complete genetic diagnosis.
- No claim or description addressing genome-wide prior probabilities of disease-causing variants under Hardy-Weinberg equilibrium or diagnostic credible intervals for rare disease diagnosis.
- This patent’s claims are focused on contributor DNA fraction quantification and genotype posterior probability in mixture samples, not on pathogenic variant prior/posterior probability or diagnostic confidence estimation.
- Quant’s method integrates across all human genes and inheritance modes for clinical diagnostic certainty; no teaching here about mode of inheritance or clinical diagnostic interpretation.
- Use of Bayesian models here is for contributor fraction estimation and genotype assignment in mixtures, not disease variant probability estimation in individual genomes.
- No explicit use of TP, FN, TN, FP terminology linked to clinical diagnosis certainty.

#### Conclusion

Not blocking for Quant.

The patent describes sophisticated probabilistic Bayesian methods to deconvolve nucleic acid mixtures of multiple contributors with unknown genotypes, which includes quantifying contributor fractions and contributor genotype posteriors. However, it does not teach or claim the core novelty of Quant, which is the genome-wide integration of prior probabilities of observing pathogenic variants with observed and missing patient variant data to calculate Bayesian posterior probabilities of a **complete genetic diagnosis** with credible intervals reflecting diagnostic certainty.

The focus here is on mixture contributor fraction quantification and genotype calling in forensic and transplant or mixed samples, rather than on quantifying diagnostic confidence from a comprehensive pathogenic variant probability model.

While both systems use Bayesian probabilistic models and consider allele counts/error distributions, this patent does not overlap on the unique theory or application of Quant’s method to genome-wide pathogenic variant priors, inheritance mode modeling, or estimation of diagnostic posterior probability integrating false negatives in clinical rare disease genomics.

---

# Summary

The analyzed patent exemplifies advanced Bayesian mixture modeling for contributor DNA fraction quantification and genotype inference in multiple contributor samples but is not technically similar enough to Quant’s core innovation of genome-wide diagnostic posterior probability estimation integrating prior variant pathogenicity probabilities with observed/missing patient data for clinical genetic diagnosis confidence.

Hence, it is **not blocking for Quant**.
