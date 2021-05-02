% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This code will verify the Time shifting property of Fourier transform

to = 25; % defining To
ts = 1/10; % defining Ts
N = to/ts; % defining range N
t = ts:ts:to; % defining range for t
fs = 1/ts; % defining frequency fs
f = linspace(-fs,fs,N); % defining frequency f
Xt = (t>=0 & t<10); % defining pulse X(t)

% plotting original signal X(t)
figure;
subplot(2,1,1);
plot(t,Xt,'Linewidth',1.5);
xlabel('Time(t)->');
ylabel('x(t) ->');
title('Plotting rectangular signal X(t) of length 10');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

To = 5; % defining value by which signal is to be plotted
Ft = fftshift(fft(Xt)); % taking fft of X(t)
shift_Ft = exp(-1j*2*pi*f*To).*Ft; % Shifting fourier transform
Shift_Ift = abs(ifft(shift_Ft)); % Taking inverse fourier transform
t1 = t + To;
Shift_Ift = Xt;

% plotting X(t-5)
figure;
subplot(2,1,1);
plot(t1,Shift_Ift,'Linewidth',1.5);
xlabel('time(t)->');
ylabel('X(t-5)->');
title('Shifting X(t) by 5 units to right, Plotting X(t-5)');
grid on;


To = -5; % defining value by which signal is to be plotted
Ft = fftshift(fft(Xt)); % taking fft of X(t)
shift_Ft = exp(-1j*2*pi*f*To).*Ft; % Shifting fourier transform
Shift_Ift = abs(ifft(shift_Ft)); % Taking inverse fourier transform
t2 = t + To;
Shift_Ift = Xt;

% plotting X(t+5)
subplot(2,1,2);
plot(t2,Shift_Ift,'Linewidth',1.5);
xlabel('time(t)->');
ylabel('X(t+5)->');
title('Shifting X(t) by 5 units to left, Plotting X(t+5)');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');


