function  myconv(x,h)
% Summary of the function myconv(x,h) is :
%   This function takes as input two finite length sequences 'x' and 'h'
%   and calculate the convulution of x and h

% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

nx = length(x); % length of sequence x
nh = length(h); % length of sequence h
ny = nx+nh-1; % length of output convulated sequence y
y = zeros(1,ny); % output convulated sequence y
h = [h zeros(1,ny-nh+1)]; % padding h with extra zeros

for i=1:ny
    sum=0; %to calculate sum at each iteration
    for j=1:nx
        if (i-j+1>0)
            sum = sum + (x(j)*h(i-j+1));
        end
    end
    y(i)=sum;
end
stem(y);
xlabel('time(t) ->');
ylabel('x(n) conv h(n) ->');
title('Mohit Akhouri-19ucc023 - Exercise2','Discrete convolution');
grid on;
end

