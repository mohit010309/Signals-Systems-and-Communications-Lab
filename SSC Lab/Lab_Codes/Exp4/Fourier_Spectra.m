function [xt] = Fourier_Spectra(Dk,T,t,num)
% This function will calculate and return the fourier spectra of signal 
% with time period T for number of fourier series coefficients 
% equal to 'num'

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

xt = 0; % initializing output variable xt to store fourier spectra

% loop for finding fourier spectra of signal with 'num' Fourier coefficients
for k=1:num
    xt = xt + (Dk(k) .* exp(1j*(k-1)*t*2*pi/T));
end
    
end

