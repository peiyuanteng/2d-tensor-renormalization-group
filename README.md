# tensor-network
These codes provides a implementation of the tensor renormalization group method proposed by Levin and Nave. 

Classical Ising model on a square lattice is considered. This package implements a infinate lattice iteration method to calculate the free energy and the magnitization.

This package also provide a tentitave calculation of yang-lee zeros using tensor network method, when the paramenters are extended to the complex space.

These codes are free to be used and modified.

usage:
1 mag(h): this function calculate the magnetization example: mag(0.001) the parameter is the numerical differenciation increment. D(bond dimension of a tensor) h0(external magnetic field) can be adjusted in the file.
2 findzero(): this function made a scatter plot of the approximated yang-lee zeros distribution on the h--T plane when h is pure imaginary
