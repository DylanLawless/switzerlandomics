## Patent/Publication Analysis

### Reference #1

- **Title:** Methods and systems for detecting tumor mutational burden  
- **Publication No.:** EP4207204A1  
- **Publication Date:** 2022-04-06  
- **Link:** https://patents.google.com/patent/EP4207204A1/en

#### Abstract (excerpt)

> "A computer-implemented method may obtain variant calling data for the tumor sample. The method may identify, in the variant calling data and in view of at least one population database, a list of germline variants for the tumor sample along each chromosome. The method may identify, in the variant calling data, a list of candidate somatic variants. The method may filter out likely germline variants from the list of candidate somatic variants to retain only likely somatic variants, filtering out the likely germline variants further comprising the steps of estimating a probability of each candidate somatic variant i being a germline variant ('Pgermline(i)'); and determine whether a candidate somatic variant i is germline or somatic, to retain only the likely somatic variants in the list of candidate somatic variants, determining the tumor mutational burden (TMB) value for the tumor sample."

#### Relevant Overlaps

- Uses population variant databases (e.g., gnomAD, 1000 Genomes) to pre-classify variants into germline and candidate somatic variants.
- Applies a Hidden Markov Model (HMM) along each chromosome to estimate probabilities that candidate somatic variants are germline variants (Pgermline(i)).
- Uses variant allele fractions (VAF/VF) from sequencing data as observed states in the HMM.
- Includes discretization of hidden states representing variant fractions and uses emission probabilities modeled as a Beta distribution combined with a uniform distribution.
- Incorporates transition probabilities (pswitch) modeling the relationships between adjacent variants for chromosomal segments affected by copy number variations.
- Applies thresholds on Pgermline(i) to filter variants classified as germline or somatic.
- Integrates adding artificial data points for genomic regions lacking variant calls to enhance HMM performance.
- Calculates tumor mutational burden (TMB) by counting filtered somatic variants.
- Provides reports of TMB values potentially to inform cancer treatment decisions.
- Describes computational workflows compatible with clinical NGS sequencing data (targeted panels, WES, WGS).
- Details Bayesian/probabilistic modeling of variant classification considering sequencing noise and sample properties (e.g., tumor purity, ploidy).
- Experiments demonstrating classification performance and correlation with alternative methods.

#### Key Differences

- The patent focuses on tumor-only cancer sequencing samples, with the goal of accurately identifying somatic mutations amid germline variants without matched normal samples, and subsequently calculating TMB.
- Quant’s core innovation is a genome-wide prior probability platform estimating disease-causing variant probabilities integrating observed and unobserved variant data (TP, FN) across all human genes and modes of inheritance, to infer Bayesian posterior probabilities of a complete genetic diagnosis with credible intervals.
- The patented methods do not model false negatives or missing variant data explicitly to quantify diagnostic certainty as in Quant.
- The patent centers on variant classification (somatic vs. germline) for somatic mutation burden estimation, primarily using a Hidden Markov Model informed by variant allele fractions; it does not integrate genome-wide variant prior probabilities under Hardy-Weinberg Equilibrium or incorporate inheritance modes.
- The Bayesian modeling in the patent serves to refine variant origin classification (germline/somatic), not to derive a posterior probability of a comprehensive genetic diagnosis.
- Quant’s emphasis on combining prior probabilities per gene, inheritance mode, and variant observation/no-observation to calculate posterior diagnosis confidence with credible intervals is absent here.
- Quant extends beyond variant classification or tumor mutational burden estimation, targeting general rare disease diagnosis confidence using variant and sample-level data integration, whereas the patent is restricted to cancer TMB assessment.

#### Conclusion

Not blocking for Quant.  
The patent primarily relates to probabilistic classification of somatic vs. germline variants in tumor-only sequencing to estimate tumor mutational burden, employing a Hidden Markov Model on variant allele fractions. Quant’s unique innovation—Bayesian posterior modeling of complete genetic diagnosis incorporating prior genome-wide disease-causing variant probabilities, false negatives, and inheritance modes—is substantially different in underlying theory, purpose, and scope. No close overlap exists in the central theoretical approach of using TP, FN, and integrating prior probabilities for diagnostic certainty.
