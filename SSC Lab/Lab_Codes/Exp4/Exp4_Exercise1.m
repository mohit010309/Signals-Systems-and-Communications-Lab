% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% plotting periodic signals x1(t) and x2(t)
N = 256; % defining total number of samples
T = 2; % defining bound on time
t = linspace(0,T,N); % defining the time(t) axis
num = 10; % number of fourier series coefficients to be calculated

% loop for defining periodic signals x1(t) and x2(t)
for i=1:length(t)
    if(t(i)<=1)
        x1(i)=exp(-t(i)/2);
        x2(i)=1;
    elseif(t(i)>1 & t(i)<=2)
        x1(i)=0;
        x2(i)=-1;
    end
end
% plotting signals x1(t) and x2(t)
figure;
subplot(2,1,1);
plot(t,x1,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{1}(t) ->');
title('Plotting x_{1}(t) = e^{-t/2}');
grid on;
subplot(2,1,2);
plot(t,x2,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{2}(t) ->');
title('Plotting x_{2}(t) = 1 ( 0 <= t <= T/2 ) , -1 ( T/2 < t <= T) , T=2');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

Dk1=Fourier_Series_Coeff(x1,N,num); % calculating 10 fourier series coefficients for signal x1(t)
Dk2=Fourier_Series_Coeff(x2,N,num); % calculating 10 fourier series coefficients for signal x1(t)
mag_Dk1=abs(Dk1); % calculating magnitude of Dk1
ang_Dk1=angle(Dk1); % calculating phase angle of Dk1
mag_Dk2=abs(Dk2); % calculating magnitude of Dk2
ang_Dk2=angle(Dk2); % calculating phase angle of Dk2

% plotting magnitude and phase plot of Dk1
figure;
subplot(2,1,1);
stem(mag_Dk1,'Linewidth',1.5);
xlabel('Coefficient (k) ->');
ylabel('Magnitude of D_{k} ->');
title('Magnitude plot of D_{k} of signal x_{1}(t)');
grid on;
subplot(2,1,2);
stem(ang_Dk1,'Linewidth',1.5);
xlabel('Coefficient (k) ->');
ylabel('Phase angle of D_{k} ->');
title('Phase plot of D_{k} of signal x_{1}(t)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

% plotting magnitude and phase plot of Dk2
figure;
subplot(2,1,1);
stem(mag_Dk2,'Linewidth',1.5);
xlabel('Coefficient (k) ->');
ylabel('Magnitude of D_{k} ->');
title('Magnitude plot of D_{k} of signal x_{2}(t)');
grid on;
subplot(2,1,2);
stem(ang_Dk2,'Linewidth',1.5);
xlabel('Coefficient (k) ->');
ylabel('Phase angle of D_{k} ->');
title('Phase plot of D_{k} of signal x_{2}(t)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

figure;
xt1=Fourier_Spectra(Dk1,T,t,num); % Fourier spectra of signal x1(t)
xt2=Fourier_Spectra(Dk2,T,t,num); % Fourier spectra of signal x2(t)

% plotting fourier spectra of signals x1(t) and x2(t) for Dk, k=0-9
subplot(2,1,1);
plot(t,xt1,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{1}(t) ->');
title('Fourier spectra of x_{1}(t)');
grid on;
subplot(2,1,2);
plot(t,xt2,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{2}(t) ->');
title('Fourier spectra of x_{2}(t)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

