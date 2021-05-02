function y = test2(x,y)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
nx=length(x);
ny=length(y);
n=nx+ny-1;
y=zeros(1,n+1);
x=[x zeros(1,n-nx)];
y=[y zeros(1,n-ny)];
for m=2:n+2
    sum=0;
    for i=2:n-m+3
        sum=sum+(x(i-1)*y(i+m-3));
    end
    sum=sum/n;
    y(m)=sum;
end
end

