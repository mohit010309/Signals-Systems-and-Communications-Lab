% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This code will verify the Frequency shifting property of Fourier transform

to = 25; % defining To
ts = 1/10; % defining Ts
N = to/ts; % defining range N
t = ts:ts:to; % defining range for t
fs = 1/ts; % defining frequency fs
f = linspace(-fs,fs,N); % defining frequency f
Xt = cos(2*pi*15*t); % defining pulse X(t)

figure;
% plotting signal X(t)
plot(t,Xt);
xlabel('time(t)->');
ylabel('X(t)->');
title('X(t)=cos(2\pi15t)');
grid on;



