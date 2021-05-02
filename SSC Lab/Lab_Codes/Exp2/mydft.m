% function mydft(x,to,ts)
% % This function takes three arguments :
% % a sequence 'x', sampling interval 'ts' and to
% % This function will calculate the discrete fourier transform of signal 'x'
% 
% % Name = Mohit Akhouri
% % Roll no = 19UCC023
% % SSC LAB Batch D1 - Monday ( 2-5 pm )
% 
% %initializing N and fs
% N = to/ts;
% fs = 1/ts;
% %creating a empty array to store the result using zeros function
% X = zeros(1,N);
% %loop algorithm to calculate the DFT of signal x1(t)
% for k=1:N
%     sum = 0;
%     for n=1:N
%         sum = sum + (x(n).*(exp(-1i*2*pi*(k-1)*(n-1)/N)));
%     end
%     X(k) = sum;
% end
% f = linspace(-fs,fs,N); %defining frequency from -fs to fs
% %plotting the graphs (magnitude plot and phase plot)
% subplot(2,2,1);
% plot(f,abs(fftshift(X)));
% xlabel('Frequency (Hz) ->');
% ylabel('Magnitude ->');
% title('Magnitude Plot using function mydft');
% grid on;
% subplot(2,2,3);
% plot(f,angle(X));
% xlabel('Frequency (Hz) ->');
% ylabel('Phase angle ->');
% title('Phase Plot using function mydft');
% grid on;

function mydft(x,to,ts)
% This function takes three arguments :
% a sequence 'x', sampling interval 'ts' and to
% This function will calculate the discrete fourier transform of signal 'x'

% Name = Hitesh Goyal
% Roll no = 19UEC023

%initializing N and fs
N = to/ts;
fs = 1/ts;
%creating a empty array to store the result using zeros function
X = zeros(1,N);
%loop algorithm to calculate the DFT of signal x1(t)
for k=1:N
    sum = 0;
    for n=1:N
        sum = sum + (x(n).*(exp(-1i*2*pi*(k-1)*(n-1)/N)));
    end
    X(k) = sum;
end
f = linspace(-fs,fs,N); %defining frequency from -fs to fs
%plotting the graphs (magnitude plot and phase plot)
subplot(2,2,1);
plot(f,abs(fftshift(X)));
xlabel('Frequency (Hz) ->');
ylabel('Magnitude ->');
title('Magnitude Plot using function mydft');
grid on;
subplot(2,2,3);
plot(f,angle(X));
xlabel('Frequency (Hz) ->');
ylabel('Phase angle ->');
title('Phase Plot using function mydft');
grid on;