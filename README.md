# RNA-Seq Analysis with R (Cohort 03)

Welcome to the **RNA-Seq Analysis with R** repository for **Cohort 03**! This repository contains all resources, scripts, and documentation to guide you through RNA-Seq analysis using R, from preprocessing to interpretation of results.

## Course Overview

In this course, we cover the fundamentals of RNA-Seq analysis with a focus on **differential gene expression** analysis. Topics include:
- Data preprocessing
- Quality control
- Normalization techniques
- Statistical analysis
- Biological interpretation

Throughout, we leverage key R packages such as `DESeq2`, `edgeR`, and `limma` for practical applications.

## Prerequisites

Participants should have:
- Basic knowledge of R programming.
- Familiarity with fundamental concepts in bioinformatics and molecular biology.
- Access to RStudio and required packages (see Installation).

## Installation

To get started, clone this repository and install the required R packages. In R, run:

```r
# Install required packages
install.packages(c("BiocManager", "tidyverse"))
BiocManager::install(c("DESeq2", "edgeR", "limma", "EnhancedVolcano"))
