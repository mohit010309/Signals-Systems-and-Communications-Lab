function [xm] = Gibbs_Phenomenon(x,t,T,N,M)
% This function will illustrate the gibb's phenomenon for signal x(t)
% for a value of M ( in this exp, M=19 and M=99 )

% This Gibb's phenomenon function returns the approximated signal xm(t)
% for original signal x(t) where M is a number which is given as 19 and 99 
% in this experiment

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

Dk=Fourier_Series_Coeff_Gibbs(x,N,M); % calculating Dk used for calulating xm(t)
xm=0; % initializing output variable xm to store approximated signal xm(t)

% running loop to calculate approximated signal xm(t)
for k=-M:M
    xm=xm+(Dk(k+M+1).*exp(1j*k*t*2*pi/T));
end
end