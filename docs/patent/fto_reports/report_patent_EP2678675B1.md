## Patent/Publication Analysis

### Reference #1

- **Title:** Methods of detecting aneuploidy in human embryos  
- **Publication No.:** EP2678675B1  
- **Publication Date:** (Not provided, please confirm actual date; publication available at https://patents.google.com/patent/EP2678675B1/en)  
- **Link:** https://patents.google.com/patent/EP2678675B1/en

#### Abstract (excerpt)  
> "Methods for determining the developmental potential of a human embryo by measuring one or more cellular parameters including the duration of cytokinesis events and time intervals between successive cytokinesis events measured by time-lapse microscopy, to detect aneuploidy and rank embryos based on chromosome content. The methods further include detecting fragmentation levels and gene expression profiles to assess developmental potential and determine whether aneuploidy arises from mitotic or meiotic errors."

#### Relevant Overlaps

- Uses **time-lapse microscopy** to measure **cellular timing parameters** in early embryo cell division: duration of first cytokinesis, time intervals between cytokinesis 1 and 2, and between cytokinesis 2 and 3.
- Applies quantitative thresholds on these intervals to detect **aneuploidy**, including distinction between mitotic and meiotic origins of errors.
- Integrates morphological parameters such as **cellular fragmentation** and interprets the degree of fragmentation in assessing the likelihood of aneuploidy.
- Correlates dynamic imaging parameters with **chromosome content** assessed by genomic methods.
- Employs **probabilistic and/or automated image analysis algorithms** (e.g., particle filter models) to extract morphological timing parameters reliably.
- Analyzes gene expression profiles in parallel to imaging data to further assess developmental potential, including patterns of maternal RNA degradation and embryonic gene activation.
- Focuses on **quantitative developmental potential assessment** and embryo viability ranking via multiple measured cellular parameters.
- The patent claims methods of integrating dynamic cellular parameters to predict embryo aneuploidy and viability, with **specific timing thresholds and fragmentation levels**.

#### Key Differences

- Quant differs fundamentally in scope and technical approach:
  - Quant models **genome-wide prior probabilities of pathogenic variant observation** under Hardy-Weinberg assumptions, integrating **variant-level data (including population frequencies and clinical annotations) with patient-specific observations** to compute a **Bayesian posterior probability of complete genetic diagnosis**.
  - Quant explicitly models **false negative rates** for unobserved or poorly covered genomic regions, a concept not addressed in the patent.
  - The patent focuses exclusively on **morphological and temporal imaging parameters of embryonic cell division**, linking these to chromosomal aneuploidy; it does not engage in **variant-level genetic variant probability modeling or Bayesian integration of genetic data**.
  - The patent’s imaging parameters relate to **physical developmental timing and fragmentation metrics**, not to genetic variant probabilities or classification based on variant pathogenicity.
  - Quant’s use of prior probabilities and integration with observed variant calls to yield a **posterior probability of genetic diagnosis confidence** is novel compared to the patent’s focus on embryo morphology and chromosomal count detection.
- No mention or claim of employing **TP, FP, TN, FN concepts relating to variant observation and variant pathogenicity probabilities** akin to Quant’s method.
- The patent is centered on **pre-implantation embryo assessment**, and while it uses Bayesian or probabilistic terminology regarding image analysis, this is for modeling cell appearances and divisions, not genetic variant interpretation or disease diagnosis confidence.
- Quant operates at the **genomic variant level, clinical genetics, and diagnostic certainty**, not embryo imaging or aneuploidy assessment by cell cycle timing.

#### Conclusion

**Not blocking for Quant.**

---
**Summary:**  
While both Quant and EP2678675B1 employ Bayesian or probabilistic modeling and time-lapse imaging data, their fields and core technical implementations differ significantly. The patent is directed to embryo development imaging parameters to detect chromosomal aneuploidy and rank embryos, without addressing genome-wide prior probability modeling or Bayesian posterior probabilities for variant-level diagnosis certainty as Quant does. Quant’s innovative combination of variant frequency priors, clinical variant classifications, modeling of false negatives, and integrating patient genomic data into a probabilistic diagnosis framework does not overlap with the patent’s focus on cellular time intervals and fragmentation as morphological markers of aneuploidy.

Therefore, the patent does not block Quant’s Freedom-to-Operate.
