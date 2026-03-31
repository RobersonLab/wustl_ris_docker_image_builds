BiocManager::install(
  pkgs = c( 'multtest' ),
  ask = FALSE,
  checkBuilt = TRUE )

install.packages(
  pkgs = c(
    'mutoss',
    'metap',
    'scGate' ),
  ask = FALSE,
  checkBuilt = TRUE,
  repos = 'https://repo.miserver.it.umich.edu/cran/' )
