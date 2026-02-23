##################################
# Author: Elisha Roberson        #
# Edited: 2025-11-27             #
##################################

# This is a hack.
# For some reason the sleuth install failed on the original version.
# Since I need to rebuild full images of this now that 20 is out
# of support, I'm just adding sleuth to the old image.
# This won't work for everything, but maybe for this.

# start with ubuntu base image
FROM thatdnaguy/r_bulk_rnaseq:v4.4.0_02

# put R package script in image
ADD install_sleuth.R /install_sleuth.R

# Run relevant R package installs
RUN Rscript /install_sleuth.R
