# start with CRAN packages
install.packages(
  pkgs = c( 'here',
            'tidyverse',
            'cowplot',
            'patchwork',
            'reshape2',
            'ggrepel',
            'devtools',
            'Rtsne',
            'ggforce',
            'gghighlight',
            'knitr',
            'UpSetR',
            'tsne',
            'umap',
            'cluster',
            'dbscan',
            'BiocManager' ),
  ask = FALSE,
  checkBuilt = TRUE,
  repos = 'https://repo.miserver.it.umich.edu/cran/' )

# then bioconductor
BiocManager::install( version = "3.19", ask = FALSE, checkBuilt = TRUE )

BiocManager::install(
  pkgs = c( 'DESeq2',
            'RColorBrewer',
            'UpSetR',
            'WGCNA',
            'dynamicTreeCut',
            'gprofiler2',
            'pheatmap'),
  ask = FALSE,
  checkBuilt = TRUE )

# finally devtools
devtools::install_github( 'pachterlab/sleuth' )
devtools::install_github( 'COMBINE-lab/wasabi' )
