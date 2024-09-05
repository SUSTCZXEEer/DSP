function [rho,lda,k] = Partial_fraction(numerator,denominator)
[r,p,k]=residue(numerator,denominator);
rho=-r./p;
lda=1./p;
end

