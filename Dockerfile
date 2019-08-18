#===============================================================================
#
#         FILE: Dockerfile
#    DEV USAGE: docker run -it -v --rm /Users/Alec/Documents/Bioinformatics/MDV_Project/p0100_music/data:/mnt/data --name rbaseubuntu ubuntu:latest
#        USAGE: docker image build -t steepale/20190817_rbaseunbuntu:1.0 . # local image build
#
#  DESCRIPTION:  This Dockerfile will build an R environemtn in an Ubuntu OS
# REQUIREMENTS:  ---
#        NOTES:  ---
#       AUTHOR:  Alec Steep, alec.steep@gmail.com
#  AFFILIATION:  Michigan State University (MSU), East Lansing, MI, United States
#				         USDA ARS Avian Disease and Oncology Lab (ADOL), East Lansing, MI, United States
#				         Technical University of Munich (TUM), Weihenstephan, Germany
#      VERSION:  1.0
#      CREATED:  2019.08.17
#     REVISION:  ---
#===============================================================================

# Pull the Ubuntu OS image
FROM ubuntu:18.04

# Update the apt-get in the Ubuntu image
# Install the MuSiC2 dependencies
# Note: use 'apt-cache policy <package-name>' to determine which package is installed
RUN apt-get update \
    && apt-get install -y sudo=1.8.21p2-3ubuntu1 \
    && sudo apt-get install -y build-essential=12.4ubuntu1 \
    wget=1.19.4-1ubuntu2.2 \
    r-base
# Set working directory
WORKDIR /

# This is the CMD command from the Ubuntu:18.04 image we FROM'ed
CMD ["/bin/bash"]
