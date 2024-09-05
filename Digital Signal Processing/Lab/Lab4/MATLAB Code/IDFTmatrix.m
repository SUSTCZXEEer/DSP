function B = IDFTmatrix(N)
%remeber that in complex domain transpose contains conjugate, as the DFTmatrix is symmetric
%we can use tranpose to get the conjugate matrix
B=(1/N)*DFTmatrix(N)';

end

