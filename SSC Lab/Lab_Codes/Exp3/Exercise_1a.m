% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This is the code to perform DFT for x(t)=cos(2000*pi*t)+cos(800*pi*t)
% by calling function myDFT(x,N)

% initializing constants fs,N,ts and to
fs = 8000;
N = 128;
ts = 1/fs;
to = N*ts;
t = ts:ts:to; % defining range from 'ts' to 'to'
f = linspace(-fs,fs,N); % defining range from '-fs' to 'fs'
x = cos(2000*pi*t) + cos(800*pi*t); % defining x(t)
subplot(3,1,1);
plot(t,x);
xlabel('time(t) ->');
ylabel('x(t) ->');
title('x(t) = cos(2000\pit) + cos(800\pit)');
grid on;

X = myDFT(x,N); % calculating DFT of 'x' using myDFT
mag = fftshift(abs(X));
ang = angle(X);

subplot(3,1,2);
plot(f,mag);
xlabel('frequency(Hz) ->');
ylabel('Magnitude ->');
title('Magnitude vs. Frequency Plot of X(k)');
grid on;

subplot(3,1,3);
plot(f,ang);
xlabel('frequency(Hz) ->');
ylabel('Phase angle ->');
title('Phase vs. Frequency Plot of X(k)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri - Exercise 1a');


