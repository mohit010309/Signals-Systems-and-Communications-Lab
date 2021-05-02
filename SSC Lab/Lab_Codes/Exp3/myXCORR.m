function [Rxy] = myXCORR(x,y)
% This function will calculate the cross correlation of two signals
% 'x' and 'y'

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% defining constants nx,ny and N
nx=length(x);
ny=length(y);
N=nx+ny-1;
Rxy=zeros(1,N); % initializing Rxy

flip(y); % flipping y

x=[x zeros(1,N-nx)]; % padding with right zeros
y=[zeros(1,N-ny) y]; % padding with left zeros

% main loop algorithm to calculate cross-correlation of 'x' and 'y'
for m=1:N+1
    sum=0;
    for n=1:N-m+1
        sum=sum+(x(n)*y(n+m-1));
    end
    sum=sum/N;
    Rxy(m)=sum;
end

end

    
    

