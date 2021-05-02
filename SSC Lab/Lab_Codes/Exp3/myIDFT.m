function [x] = myIDFT(X,N)
% This function will calculate the inverse discrete fourier transform
% (IDFT) of X with total samples N

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

x=zeros(1,N); % initializing output
% main loop algorithm to calculate IDFT
for n=1:N
    sum=0;
    for k=1:N
        sum=sum+(X(k).*(exp(1j*2*pi*(k-1)*(n-1)/N)));
    end
    sum=sum/N;
    x(n)=sum;
end
x=abs(x);
end

