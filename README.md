# ArmadilloCuDA

This is a tool created to allow a person working with sparse matrices in the Armadillo library to perform QR factorization on a GPU. When this code was orginally created this feature was not supported in Armadillo. In order to accomplish this the code needs to break down the sparse matrix dat structure used by Armadillo, re-encode the information suitable for the cuda library, perform the factorization, and then reverse the formating back to the Armadillo sparse matrix format. 

Note 1: The timing graphs in the presentation, "CrowProjectPresentation670" are mislabeled. The correct labeling can be found in the write-up, "C670_Final_Project.pdf". Issue submitted. 

Note 2: The makefile is tailored to our local cluster configuration and will certainly need to be tweaked for your local hardware. 
