## Patent/Publication Analysis

### Reference #1

- **Title:** Somatic variant cooccurrence with abnormally methylated fragments
- **Publication No.:** CA3227495A1
- **Publication Date:** 2018-11-22 (priority claims from 2021-08-04 and earlier provisional)
- **Link:** https://patents.google.com/patent/CA3227495A1/en

#### Abstract (excerpt)

> "Systems and methods for identifying variant alleles as somatic or germline are provided. Reference and variant alleles for a genomic position are identified. Methylation states and sequences of nucleic acid fragment sequences that map to the genomic position are obtained from a sample of a subject... One or more indications of the methylation states across the nucleic acid fragment sequences in the variant subset and an indication of the number of nucleic acid fragment sequences in the reference subset versus the variant subset are applied to a trained binary classifier. An identification of the variant allele at the genomic position as somatic or germline is obtained from the classifier."

#### Relevant Overlaps

- Uses methylation sequencing data in conjunction with nucleic acid sequence reads to classify variant alleles as somatic or germline.
- Assigns nucleic acid fragment sequences that have the reference or variant allele to respective subsets (reference subset and variant subset).
- Applies features derived from methylation state distributions of the variant subset and counts of reference vs variant fragments to a trained binary classifier.
- Classifier outputs an identification of the variant allele as somatic or germline.
- Makes use of large sequencing datasets (≥10^6 fragment sequences).
- Includes use of prior probabilities in a Bayesian style model for variant calling (strand-specific base counts, error estimates, likelihood computation).
- Uses p-values computed from methylation state vectors against healthy non-cancer cohort for anomalous methylation determination.
- Considers modes of sample acquisition including liquid biopsies and analyzes cfDNA.
- Trains classifiers using orthogonal labels (e.g., tumor tissue vs normal) to identify variant somatic status.
- Uses features including counts, methylation state p-values, CpG site counts, and distribution statistics as input features to the classifier.
- Proposes applications including clinical diagnostics, cancer risk assessment, tumor fraction estimation, and cancer monitoring.
- Implements bioinformatics pipelines involving variant calling integrating methylation and sequence data.

#### Key Differences

- The patent focuses specifically on distinguishing somatic vs germline variants using methylation patterns co-occurring with variant alleles in liquid biopsy (cfDNA) or tissue samples.
- Quant is primarily focused on integrating genome-wide prior probabilities of disease-causing variant occurrence under population genetics models (e.g., Hardy-Weinberg Equilibrium), combining observed variant calls and explicit false negative modeling to produce Bayesian posterior probabilities of complete diagnoses.
- Quant’s novelty lies in quantifying overall genetic diagnosis confidence, including credible intervals, whereas this patent is about classification of individual variant alleles as somatic or germline using methylation and sequence data features.
- Although both use Bayesian/statistical models and methylation fragment data, the key idea in Quant is genome-wide prior probability integration for diagnostic certainty, not solely allele classification.
- This patent uses deep learning and other classifiers trained on methylation state data for variant allele origin classification, but does not disclose integrating prior disease probabilities genome-wide or explicit false negative modeling for diagnostic certainty.
- Quant’s method includes modeling inheritance modes and population allele frequencies for disease-causing variants, which are not discussed here.
- Uses of TP, FN concepts to quantify false negatives explicitly in variant observation confidence in Quant are not detailed in this patent.
- The patent’s core claim is about training a binary classifier to assign variant alleles as somatic or germline based on methylation features and allele counts, not about quantifying diagnostic probabilities considering TP/FN rates across the genome.

#### Conclusion

Not blocking for Quant.

While both the patent and Quant employ Bayesian/statistical and machine learning techniques using methylation sequencing data for variant analysis, the patent focuses on classifying variant alleles as somatic or germline based primarily on methylation features and fragment counts at the variant position. Quant’s unique innovation—integrating genome-wide variant prior probabilities with observed and missing data to compute Bayesian posterior probabilities and credible intervals for complete genetic diagnoses—is fundamentally different from the classifier-based variant origin identification described here. Quant’s explicit modeling of false negatives, prior probabilities, and inheritance modes shifts the approach beyond simple somatic/germline classification of variant alleles.

This patent neither teaches nor claims the calculation of genome-wide variant priors, integration of TP/FN rates for diagnostic certainty, nor the derivation of comprehensive posterior probabilities of genetic diagnosis, as is central to Quant. Accordingly, these disclosures do not create freedom-to-operate concerns for Quant’s distinct methodology and claims.
