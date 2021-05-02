% comparing dsb-fc and dsb-sc

am=10;
fm=200;
fc=2000;
mu=0.8;

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

x1=ac*(1+mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t); % Am
x2=mt.*(ac*cos(2*pi*fc*t)); %dsb-sc

figure;
subplot(2,1,1);
plot(t,x1);
subplot(2,1,2);
plot(t,x2);

x1f=fftshift(fft(x1,N));
x1f_mod=10*log10(abs(x1f));

x2f=fftshift(fft(x2,N));
x2f_mod=10*log10(abs(x2f));

figure;
plot(f,x1f_mod);

figure;
plot(f,x2f_mod);