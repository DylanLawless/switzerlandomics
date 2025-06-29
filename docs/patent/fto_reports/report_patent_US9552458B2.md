## Patent/Publication Analysis

### Reference #1

- **Title:** Comprehensive analysis pipeline for discovery of human genetic variation  
- **Publication No.:** US9552458B2  
- **Publication Date:** 2017-01-24  
- **Link:** [https://patents.google.com/patent/US9552458B2/en](https://patents.google.com/patent/US9552458B2/en)  

#### Abstract (excerpt)

> "Systems and methods for analyzing genetic sequence data involve: (a) obtaining, by a computer system, genetic sequencing data pertaining to a subject; (b) splitting the genetic sequencing data into a plurality of segments; (c) processing the genetic sequencing data such that intra-segment reads, read pairs with both mates mapped to the same data set, are saved to a respective plurality of individual binary alignment map (BAM) files corresponding to that respective segment; (d) processing the genetic sequencing data such that inter-segment reads, read pairs with both mates mapped to different segments, are saved into at least a second BAM file; and (e) processing at least the first plurality of BAM files along parallel processing paths."

#### Relevant Overlaps

- Both the patent and Quant involve processing genome-wide sequencing data and variant calling workflows.
- The patent discloses a method for splitting genetic data into segments (chromosomes or subregions) and processing them via multiple parallel computing paths, storing intra- and inter-segment read pairs separately.
- Deduplication of inter-segment reads before merging back into subregion BAMs to maintain data integrity is emphasized.
- Parallelization techniques are extensively described, including use of clusters, GNU Make, xargs, Hadoop MapReduce, and cloud computing.
- The patent deals with improving computational efficiency and scalability of NGS variant discovery workflows.
- The workflow includes base quality recalibration, local realignment, variant calling, and variant quality score recalibration steps.
- The patent explicitly maintains data quality across subregions using overlap buffer zones and merging strategies.
- Multiple claims focus on splitting BAM files by chromosome or subregions, handling inter-chromosomal reads, and parallel processing paths aligned with processor cores.

#### Key Differences

- The patent focuses exclusively on computational and algorithmic methods to efficiently process raw sequencing data to reach variant call files (VCF).  
- It addresses the problem of reducing runtime and improving computational scalability of steps like alignment, deduplication, realignment, recalibration, and variant calling via multisample parallelism.  
- There is no disclosure or suggestion of quantifying the **probability of observing pathogenic variants genome-wide**, integrating prior probabilities, or explicitly modeling false negative rates for unobserved variants.  
- The patent does not describe or claim Bayesian integration of prior probabilities with observed/missing variant data to produce posterior probabilities or credible intervals of genetic diagnosis certainty.  
- It neither describes nor claims use of true positive (TP), false negative (FN), or other classification statistics as part of a probabilistic model to assess diagnostic confidence.  
- The focus is on variant discovery efficiency and data processing integrity rather than diagnostic certainty or genome-wide disease probability estimation.

#### Conclusion

Not blocking for Quant.

**Rationale:**  
While this patent relates to NGS data processing pipelines and efficient parallel computational workflows, it does not overlap with Quant’s core innovative method of calculating Bayesian posterior probabilities integrating prior probabilities with observed and unobserved variant data (e.g., considering TP and FN rates) for estimating genome-wide diagnostic confidence. The patent focuses on efficient variant discovery rather than probabilistic disease variant quantification or diagnostic confidence assessment. Therefore, it does not present blocking overlap for Quant’s technology.
