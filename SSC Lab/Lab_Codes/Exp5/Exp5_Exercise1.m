% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This code will verify the convolution property of Fourier transform

to = 25;
ts = 1/10;
N = to/ts;
t = ts:ts:to; % defining range for t
fs = 1/ts;
f = linspace(-fs,fs,N);
xt = (t>=0 & t<10); % defining first pulse x(t)
ht = (t>=0 & t<10); % defining second pulse h(t)

figure;
subplot(2,1,1);
plot(t,xt,'Linewidth',1.5);
xlabel('Time(t)->');
ylabel('x(t) ->');
title('Plotting rectangular signal x(t) of length 10');
grid on;
subplot(2,1,2);
plot(t,ht,'Linewidth',1.5);
xlabel('Time(t)->');
ylabel('h(t)->');
title('Plotting rectangular signal h(t) of length 10');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% Finding convolution in time domain
conv_xh_t = conv(xt,ht); % using function conv to calculate convolution in time domain

% plotting figures;
figure;
subplot(2,1,1);
plot(conv_xh_t);
xlabel('time(t) ->');
ylabel('x(t) conv h(t)');
title('Convolution of x(t) and h(t) in time domain');
grid on;

% Finding convolution in frequency domain
conv_xh_f = abs(ifft(fft(xt).*fft(ht))); % taking inverse fft of multiplication of fft
% of x(t) and h(t) in frequency domain

% plotting figures;
subplot(2,1,2);
plot(conv_xh_f);
xlabel('frequency(Hz) ->');
ylabel('x(\omega) x h(\omega)');
title('Multiplication (Convolution) of x(\omega) and h(\omega) in Frequency domain');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');






