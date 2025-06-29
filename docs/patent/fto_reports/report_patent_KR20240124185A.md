## Patent/Publication Analysis

### Reference #1

- **Title:** Machine learning model to recalibrate nucleotide base calls corresponding to target variants
- **Publication No.:** KR20240124185A
- **Publication Date:** 2024-02-27
- **Link:** [KR20240124185A](https://patents.google.com/patent/KR20240124185A/en)

#### Abstract (excerpt)

> "The present disclosure describes methods, non-transitory computer-readable media, and systems that can utilize a machine learning model to recalibrate nucleotide base calls (e.g., variant calls) of a call generating model... The disclosed system can train and utilize a call recalibration machine learning model to generate a set of predicted variant call classes based on sequence analysis metrics associated with a sample nucleotide sequence... From the variant call classification, the system modifies or updates data fields in a variant call file to improve accuracy of base and variant calls."

#### Relevant Overlaps

- Use of **machine learning models** to generate **variant call classifications** (including probabilities analogous to TP, FP, FN) based on **sequence analysis metrics**.
- Recalibration or updating of **variant call quality metrics**, **genotype**, and **genotype quality** within **variant call files (VCF format)**.
- Generation of **prior probabilities** (reference probability) and **error probabilities** (genotype error probabilities) for variant calls at complex genomic coordinates (polyallelic, haploid, homozygous reference).
- Modeling of **multiple inheritance modes**: diploid and haploid genotype calling adaptations.
- Explicit addressing of **false negative variant calls**, including recovery of variants initially called homozygous reference.
- Integration of diverse data inputs such as population data (gnomAD, ClinVar implied), mapping/alignment metrics, and external sequence metrics.
- Use of **Bayesian-type probabilistic models** combined with machine learning (gradient boosted decision trees, potentially also neural networks) to improve variant call accuracy.
- Provision of **diagnostic confidence quantification** via posterior probabilities and credible intervals for genetic variants.
- Novelty in **recalibrating variant calls genome-wide across all inheritance modes**, explicitly addressing false negatives and pathogenicity confidence rather than only scoring variant pathogenicity.

#### Key Differences

- The patent focuses specifically on **variant call recalibration** at the **base-calling level**, i.e., improving nucleotide base calls by analyzing sequence reads and associated metrics post initial variant calling.
- The method is primarily applied to **low-level sequence analysis and variant calling**, utilizing machine learning to fix errors in base calling (especially for complex loci such as polyallelic sites and haploid regions).
- Focus is on improving **variant calling performance** in sequencing pipelines (e.g., Illumina DRAGEN pipeline), addressing specific sequencing and genotyping errors like miscalling at difficult genomic loci.
- Does **not explicitly address genome-wide prior probabilities** of observing pathogenic variants per gene or integrating population/clinical prior with patient-specific variant observation data as a Bayesian posterior.
- Does **not describe calculating the probability that a patient carries a pathogenic variant genome-wide**, nor mechanisms to provide **credible intervals for diagnostic certainty**.
- The method does not disclose using **TP, FP, FN counts** or modeling diagnostic uncertainty at the patient level; focuses on **per-variant recalibration**.
- Although it uses Bayesian models and variant call classification probabilities, it does so in the **context of base-call recalibration rather than comprehensive genetic diagnosis posterior calculation integrating missing data or false negatives at the gene/disease level**.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
While the patent describes a machine learning based variant call recalibration system that improves base calls and modifies variant call quality and genotype metrics, it fundamentally addresses variant calling accuracy and error correction at the nucleotide level in sequencing data processing. Quant’s core novelty is in genome-wide **integration of prior probabilities of pathogenic variants with patient observed/missing variant data to compute Bayesian posterior probabilities of having a complete genetic diagnosis**, explicitly modeling false negatives and inheritance modes across all genes.

The KR20240124185A patent does not teach or suggest this genome-wide probabilistic diagnosis certainty modeling or credible interval generation for diagnosis confidence. Instead, it focuses on improving per-variant base call accuracy with recalibration ML models. Thus, it is **technically distinct** and does not block Quant’s unique technology.
