% FM wave generation in time domain and frequency domain
am=10;
ac=20;
fm=200;
fc=2000;
fs=10*fc;
nf=fs/2;
ts=1/fs;
to=0.05;
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

b1=1;
b2=5;
b3=7;
b4=10;

mtf=fftshift(fft(mt,N));
mtf_mod=10*log10(abs(mtf));

ctf=fftshift(fft(ct,N));
ctf_mod=10*log10(abs(ctf));

figure;
subplot(2,1,1);
plot(f,mtf_mod);
subplot(2,1,2);
plot(f,ctf_mod);

fm1=ac*cos(2*pi*fc*t + b1*sin(2*pi*fm*t));
fm2=ac*cos(2*pi*fc*t + b2*sin(2*pi*fm*t));
fm3=ac*cos(2*pi*fc*t + b3*sin(2*pi*fm*t));

figure;
subplot(3,1,1);
plot(t,fm1);
subplot(3,1,2);
plot(t,fm2);
subplot(3,1,3);
plot(t,fm3);

fm1f=fftshift(fft(fm1,N));
fm1f_mod=10*log10(abs(fm1f));

fm2f=fftshift(fft(fm2,N));
fm2f_mod=10*log10(abs(fm2f));

fm3f=fftshift(fft(fm3,N));
fm3f_mod=10*log10(abs(fm3f));

figure;
plot(f,fm1f_mod);

figure;
plot(f,fm2f_mod);

figure;
plot(f,fm3f_mod);

delf1=b1*fm;
delf2=b2*fm;
delf3=b3*fm;

d1=fmdemod(fm1,fc,fs,delf1);
d2=fmdemod(fm2,fc,fs,delf2);
d3=fmdemod(fm3,fc,fs,delf3);

figure;
subplot(2,1,1);
plot(t,d1);
subplot(2,1,2);
plot(t,d2);

figure;
subplot(2,1,1);
plot(t,d3);