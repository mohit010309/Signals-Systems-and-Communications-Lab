% code to generate dsbsc wave in time domain and ferquency domain
am=5;
ac=5;
fm=1;
fc=20;

fs=10*fc;
nf=fs/2;
ts=1/fs;
to=5;
t=ts:ts:to;
N=length(t);
f=linspace(-nf,nf,N);

mt=am*cos(2*pi*fm*t);
ct=ac*cos(2*pi*fc*t);

m1=fftshift(fft(mt,N));
m1_mod=10*log10(abs(m1));

c=fftshift(fft(ct,N));
c_mod=10*log10(abs(c));


figure;
subplot(2,1,1);
plot(t,mt);
subplot(2,1,2);
plot(t,ct);

figure;
subplot(2,1,1);
plot(f,m1_mod);
subplot(2,1,2);
plot(f,c_mod);

dsb=mt.*(ac*cos(2*pi*fc*t));

dsbf=fftshift(fft(dsb,N));
dsbf_mod=10*log10(abs(dsbf));

figure;
subplot(2,1,1);
plot(t,dsb);
subplot(2,1,2);
plot(f,dsbf_mod);

d1=abs(hilbert(dsb));

figure;
subplot(2,1,1);
plot(t,d1);

