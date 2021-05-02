% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This code will calculate the cross correlation of two discrete signals
% 'x' and 'y' where y=x+w and w=randn(1,N) , a zero-mean , unit variance 
% of the Gaussian random process

% defining constants f,fs,N and n
f=1;
fs=200;
N=1024;
n=1:N;
x=sin((2*pi*f*n)/fs); % defining x[n] 
subplot(2,2,1);
plot(n,x);
xlabel('samples (n) ->');
ylabel('x[n] ->');
title('x[n] = sin((2\pifn)/F_{s})');
grid on;

w=randn(1,N); % defining Gaussian random process 
y=x+w; % defining y[n]

subplot(2,2,2);
plot(n,y);
xlabel('samples (n) ->');
ylabel('y[n] ->');
title('y[n] = x[n]+w[n]');
grid on;

Rxy_inbuilt=xcorr(x,y); % calculating cross correlation of 'x' and 'y' using inbuilt function
subplot(2,2,3);
plot(Rxy_inbuilt);
xlabel('samples (m) ->');
ylabel('R_{xy}[m] ->');
title('R_{xy}[m] = xcorr(x,y)');
grid on;

Rxy_myfunc=myXCORR(x,y); % calculating cross correlation of 'x' and 'y' using myXCORR function
subplot(2,2,4);
plot(Rxy_myfunc);
xlabel('samples (m) ->');
ylabel('R_{xy}[m] ->');
title('R_{xy}[m] = myXCORR(x,y)');
grid on;

sgtitle('19ucc023 - Mohit Akhouri - Exercise 3');
