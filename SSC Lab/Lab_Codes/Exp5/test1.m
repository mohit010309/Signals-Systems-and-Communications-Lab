clc;clear all;close all;
t=0:1:100;
x=[t>=10 & t<=20];
figure(1);
subplot(2,2,1);plot(x);title('Pulse 1');grid on;
y =[t>=10 & t<=25];
subplot(2,2,2);plot(y);title('Pulse 2');grid on;
s=abs(ifft(fft(x).*fft(y)));
subplot(2,2,3);plot(3);title('By Multiplication');grid on;

z = conv(x,y);
subplot(2,2,4);plot(z);title('By Convolution');grid on;

a = ones(1,128);b=zeros(1,128);
pulse=[b a b a b];
figure(2);
subplot(2,1,1);plot(pulse);title('pulse');
h=fft(pulse,256);
fftpulse = fftshift(fft(pulse,256));
c=zeros(1,256);
for n=1:1:256
	c(n)=fftpulse(n).*exp(((128)*1j*2*pi*n)/256);
end
d=abs(ifft(c));
subplot(2,1,2);plot(d);title("Time shifting");