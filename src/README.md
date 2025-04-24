# Switzerland Omics IEI Genetics Table

Version: iei_genetics_release_v1

A curated resource of integrated clinical and genomic data for Inborn Errors of Immunity (IEI).

## Files

- **iei_genetics_table_v1.tsv**  
  Tab-separated values; contains per-gene variant priors and summary statistics.

- **iei_genetics_table_v1.Rds**  
  R serialized object; load directly into R for downstream analysis (`readRDS()`).

- **iei_genetics_table_v1.html**  
  Interactive report with embedded tables and visualisations.

- **iei_genetics_table_v1_files/**  
  Assets directory (JavaScript, CSS, images) supporting the HTML report.

- **MD5SUMS.txt**  
  MD5 checksums for all top-level files; verify integrity with `md5 -r`.

## Overview

This dataset supports diagnostic interpretation of immunodeficiency using population allele frequencies, ClinVar classifications, and mode-of-inheritance priors.  

## Diagnosing Immunodeficiency with genomic data

Explore the enhanced, searchable Inborn Errors of Immunity (IEI) diagnosis table. 
Built on the latest IUIS classification, this resource details phenotypes, variant classifications, and more to support clinical review and research into primary immunodeficiencies (PID).
Our knowledge base integrates genetic data from OMIM, HPO, ClinVar, gnomAD, and other leading sources, designed to help clinicians and researchers navigate the expanding landscape of immunodeficiency diagnosis.

## Developement pages

Our development pages are publically accessible on the free version at <https://iei-genetics.github.io>.

## Backround science

The related scientific reporting can be found at <https://www.medrxiv.org/content/10.1101/2025.03.25.25324607v3>.

Please cite: 

```
@article {Lawless2025VarRiskEst,
	author = {Lawless, Dylan},
	title = {Quantitative prior probabilities for disease-causing variants reveal the top genetic contributors in inborn errors of immunity},
	elocation-id = {2025.03.25.25324607},
	year = {2025},
	doi = {10.1101/2025.03.25.25324607},
	publisher = {Cold Spring Harbor Laboratory Press}
}
```

Please also consider citing the related works used to develop this tool:

- Lawless, D. et al. (2025). PanelAppRex aggregates disease gene panels and facilitates sophisticated search. [GitHub repository](https://github.com/DylanLa    wless/PanelAppRex).¬
- Landrum, M. J. et al. (2018). ClinVar: updates to support classifications of both germline and somatic variants. *Nucleic Acids Res.* doi:10.1093/nar/gkae    1090.¬
- Liu, X. et al. (2020). dbNSFP v4.0: A comprehensive database of functional predictions and annotations for human nonsynonymous and splice-site SNVs. *Nucl    eic Acids Res.*¬
 - Martin, A. R. et al. (2019). PanelApp: a tool for the diagnosis of rare diseases. *Nat. Genet.* [Include full citation details].¬
79 
