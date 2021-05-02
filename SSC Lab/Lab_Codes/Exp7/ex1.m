% This code will generate AM waves in time domain and frequency domain
am=10;
fm=200;
fc=2000;
mu1=0.3;
mu2=0.5;
mu3=1;

ac1=am/mu1; %33.33
ac2=am/mu2; %20
ac3=am/mu3; %10

fs=10*fc;
nf=fs/2;
ts=1/fs;
to=0.02;
t=ts:ts:to;
N=length(t);
f=linspace(-nf,nf,N);

mt=am*cos(2*pi*fm*t);
c1t=ac1*cos(2*pi*fc*t);
c2t=ac2*cos(2*pi*fc*t);
c3t=ac3*cos(2*pi*fc*t);

ffm=fftshift(fft(mt,N));
ffm_mod=10*log10(abs(ffm));

cc1=fftshift(fft(c1t,N));
cc1_mod=10*log10(abs(cc1));

cc2=fftshift(fft(c2t,N));
cc2_mod=10*log10(abs(cc2));

cc3=fftshift(fft(c3t,N));
cc3_mod=10*log10(abs(cc3));


figure;
subplot(2,1,1);
plot(t,mt);
subplot(2,1,2);
plot(t,c1t);

figure;
subplot(2,1,1);
plot(t,c2t);
subplot(2,1,2);
plot(t,c3t);

figure;
subplot(2,1,1);
plot(f,ffm_mod);
subplot(2,1,2);
plot(f,cc1_mod);

figure;
subplot(2,1,1);
plot(f,cc2_mod);
subplot(2,1,2);
plot(f,cc3_mod);

am1=ac1*(1+mu1*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
am2=ac2*(1+mu2*cos(2*pi*fm*t)).*cos(2*pi*fc*t);
am3=ac3*(1+mu3*cos(2*pi*fm*t)).*cos(2*pi*fc*t);

figure;
subplot(3,1,1);
plot(t,am1);
subplot(3,1,2);
plot(t,am2);
subplot(3,1,3);
plot(t,am3);

f1=fftshift(fft(am1,N));
f1_mod=10*log10(abs(f1));

f2=fftshift(fft(am2,N));
f2_mod=10*log10(abs(f2));

f3=fftshift(fft(am3,N));
f3_mod=10*log10(abs(f3));

figure;
subplot(3,1,1);
plot(f,f1_mod);
subplot(3,1,2);
plot(f,f2_mod);
subplot(3,1,3);
plot(f,f3_mod);


d1=abs(hilbert(am1));
d2=abs(hilbert(am2));
d3=abs(hilbert(am3));

figure;
subplot(3,1,1);
plot(t,d1/4);
subplot(3,1,2);
plot(t,d2);
subplot(3,1,3);
plot(t,d3);
