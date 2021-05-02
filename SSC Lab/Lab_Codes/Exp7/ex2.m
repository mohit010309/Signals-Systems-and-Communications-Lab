% code to study the effect of over modulation
mu=1.2;
fm=200;
fc=2000;
am=10;
ac=am/mu;

fs=10*fc;
nf=fs/2;
ts=1/fs;
to=0.02;
t=ts:ts:to;
N=length(t);
f=linspace(-nf,nf,N);

mt=am*cos(2*pi*fm*t);
ct=ac*cos(2*pi*fc*t);

figure;
subplot(2,1,1);
plot(t,mt);
subplot(2,1,2);
plot(t,ct);

amt=ac*(1+mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
ff=fftshift(fft(amt,N));
ff_mod=10*log10(abs(ff));

figure;
subplot(2,1,1);
plot(t,amt);
subplot(2,1,2);
plot(f,ff_mod);

d1=abs(hilbert(amt));
figure;
subplot(2,1,1);
plot(t,d1);