## Patent/Publication Analysis

### Reference #1

- **Title:** Systems and methods for classifying, prioritizing and interpreting genetic variants and therapies using a deep neural network  
- **Publication No.:** CA2894317C  
- **Publication Date:** 2020-12-01 (grant date on Google Patents)  
- **Link:** https://patents.google.com/patent/CA2894317C/en

#### Abstract (excerpt)

> "Systems and methods that receive as input a DNA or RNA sequence, extract features, and apply layers of processing units to compute one or more condition-specific cell variables, corresponding to cellular quantities measured under different conditions... The change in the condition-specific cell variables are used to compute a score for how deleterious a variant is, to classify a variant's level of deleteriousness, to prioritize variants for subsequent processing, and to compare a test variant to variants of known deleteriousness."

#### Relevant Overlaps

- Use of a deep neural network (DNN) with at least two layers to compute condition-specific cell variables from DNA/RNA sequences containing variants and corresponding reference sequences.
- Evaluation of variant-induced changes by comparing predicted cell variables from variant and reference sequences.
- Use of variant features including nucleotide sequence, RNA secondary structure, nucleosome positioning, and other genomic features.
- Scoring variants based on computed changes in cellular-level variables to prioritize and classify variants' potential deleteriousness.
- Ability to score novel variants and compare to known variants via a computed distance metric between variant-induced changes.
- Generation of a single numerical variant score by combining changes across multiple conditions/tissues.
- Methods to interpret which features contribute most to variant effect predictions.
- Use of autoencoders, and convolutional/recurrent neural networks (e.g., LSTMs) for feature extraction and model architecture.
- Training with multitask learning frameworks to predict probabilistic or real-valued outputs related to splicing or other cellular variables.
- Capability to evaluate the effect of therapies or edited sequences by modeling modifications on variant sequences.

#### Key Differences

- The patent is focused on deep learning to predict *cell variables* (e.g., splicing levels) affected by variants, aiming to score variant deleteriousness as an intermediate step toward phenotype or disease risk prediction.
- While this approach models variant effects in a complex biological context, it does **not explicitly model or integrate prior probabilities of observing pathogenic variants in genes genome-wide under Hardy-Weinberg equilibrium**, nor does it address integration of observed and unobserved (false negative) variant data to **compute Bayesian posterior probabilities of a complete genetic diagnosis**.
- The patent focuses on *variant classification and prioritization* through learned patterns of variant-induced cellular changes, without quantifying diagnostic confidence intervals or providing a formal Bayesian probability framework integrating TP, FP, FN, TN for diagnosis certainty.
- The patent describes a scoring system for variant deleteriousness and ranking by model outputs but does not describe combining these with inheritance mode priors or patient-level observed versus missing variant calls in a formal probabilistic model.
- The patent does not explicitly model false negative rates or unsequenced regions impacting diagnosis probability.
- Does not explicitly provide genome-wide prior probability calculations of pathogenic variant occurrence per gene.
- The notion of credible intervals or posterior probability that a patient harbors a pathogenic variant is absent.

#### Conclusion

Not blocking for Quant.

The patent describes a sophisticated neural network-based system for scoring variant effects via predicted changes in cellular variables, which is a feature-level pathogenicity classifier. However, it lacks the core theoretical and practical innovations unique to Quant, namely integration of genome-wide prior probabilities, explicit modeling of false negatives and observed variants, and the Bayesian derivation of posterior diagnostic probabilities with credible intervals. Quant’s unique method of quantifying diagnostic confidence beyond variant scoring is not disclosed or suggested in this patent.
