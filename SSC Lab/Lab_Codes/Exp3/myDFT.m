function [X] = myDFT(x,N)
% This function will calculate the DFT of function 'x' with total samples N

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

X=zeros(1,N); %initializing output X
% main loop algorithm for calculating DFT of 'x' starts here
for k=1:N
    sum=0;
    for n=1:N
        sum=sum+(x(n).*(exp(-1j*2*pi*(k-1)*(n-1)/N)));
    end
    X(k)=sum;
end
end

