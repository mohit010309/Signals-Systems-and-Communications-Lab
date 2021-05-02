% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This is the code to calculate and plot the magnitude and phase
% spectra of speech signal 'dove.wav'

[x,fs]=audioread('dove.wav'); % reading audio signal
% defining constants ts,N,to and f
ts=1/fs;
N=length(x);
to=N*ts;
f=linspace(-fs,fs,N); % defining rangde of 'f'
t=ts:ts:to; % defining range of 't'

subplot(3,1,1);
plot(t,x);
xlabel('time(t) ->');
ylabel('x(t) ->');
title('x(t) = dove.wav');
grid on;

X=myDFT(x,N); % calculating DFT of audio signal
mag=fftshift(abs(X));
ang=angle(X);

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
sgtitle('19ucc023 - Mohit Akhouri - Exercise 2');