function [Dk] = Fourier_Series_Coeff(x,N,num)
% This function will calculate the first 'num' coefficients of 
% periodic signals, num = 1,2,3 ... 10...

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

Dk = zeros(1,num); % initializing output variable Dk for storing Fourier series coefficients

% running loop to find first 'num' fourier series coefficients 
for k=1:num
    sum=0;
    for n=1:N
        sum=sum+(x(n).*exp(-1j*(k-1)*(n-1)*2*pi/N));
    end
    sum=sum/N;
    Dk(k)=sum;
end

end

