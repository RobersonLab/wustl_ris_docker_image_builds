BiocManager::install(
  version = "3.21", 
  ask = FALSE,
  checkBuilt = TRUE )

BiocManager::install(
  pkgs = c(
    'dbscan', 
    'DESeq2', 
    'dynamicTreeCut',
    'fgsea',
    'GenomicRanges', 
    'glmGamPoi',
    'gprofiler2',
    'msigdbr',	
    'pheatmap', 
    'RColorBrewer',
    'remotes',
    'Seurat', 
    'SingleCellExperiment', 
    'slingshot', 
    'tradeSeq', 
    'UCell', 
    'UpSetR', 
    'WGCNA' ),
  ask = FALSE,
  checkBuilt = TRUE )
