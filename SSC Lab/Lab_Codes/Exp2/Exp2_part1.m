% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% Code for calling mydft(x,to,ts) to calculate fourier transform of x

%defining constants to,ts,fs and N
to = 4;
ts = 1/64;
fs = 1/ts;
N = to/ts;
%initializing frequency variable from -fs to fs using linspace
f = linspace(-fs,fs,N);
t = ts:ts:to;
ut = t>=0; %defining u(t) function
xt = (exp(-2*t)).*ut; %defining x1(t)
mydft(xt,to,ts);%calling function mydft to calculate dft of x1(t)
%plotting the graphs (magnitude plot and phase plot)
subplot(2,2,2);
plot(f,abs(fftshift(fft(xt))));
xlabel('Frequency (Hz) ->');
ylabel('Magnitude ->');
title('Magnitude Plot using inbuilt function fft(X)');
grid on;
subplot(2,2,4);
plot(f,angle(fft(xt)));
xlabel('Frequency (Hz) ->');
ylabel('Phase angle ->');
title('Phase Plot using inbuilt function fft(X)');
sgtitle('Mohit Akhouri - 19ucc023');
grid on;
