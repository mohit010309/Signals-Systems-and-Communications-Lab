function [Dk] = Fourier_Series_Coeff_Gibbs(x,N,M)
% This function will calculate the Fourier Series Coefficient
% required for the Gibb's phenomenon that is Dk , where k = -M to M

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

size = 2*M+1; % defining size of Dk variable 
Dk = zeros(1,size); % initializing Dk variable to store coefficients

% running loop from k=-M to M to find fourier series coefficients
for k=-M:M
    sum=0;
    for n=1:N
        sum=sum+(x(n).*exp(-1j*k*(n-1)*2*pi/N));
    end
    sum=sum/N;
    Dk(k+M+1)=sum;
end

end

