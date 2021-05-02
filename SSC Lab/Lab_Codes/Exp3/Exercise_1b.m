% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This is the code to perform IDFT for x1[n]={1,1,1,1} with N=4
% by calling function myIDFT(X,N)

%defining constants N
N=4;
x1=[1 1 1 1]; %defining x1[n]
n=0:N-1; %defining range for 'n'

subplot(2,2,1);
stem(n,x1,'Linewidth',1);
xlabel('Total samples (N) ->');
ylabel('x_{1}(n) ->');
title('Plot of x_{1}(n) = [1 1 1 1]');
grid on;

X1=myDFT(x1,N); % calculating DFT of x1[n] using myDFT
mag=fftshift(abs(X1));
ang=angle(X1);

subplot(2,2,2);
stem(n,mag,'Linewidth',1);
xlabel('Total samples (N) ->');
ylabel('Magnitude ->');
title('Magnitude vs. Samples for X_{1}(k)');
grid on;

subplot(2,2,3);
stem(n,ang,'Linewidth',1);
xlabel('Total samples (N) ->');
ylabel('Phase angle ->');
title('Phase vs. Samples for X_{1}(k)');
grid on;

y1=myIDFT(X1,N); % calculating IDFT of X1[k]

subplot(2,2,4);
stem(n,abs(y1),'Linewidth',1);
xlabel('Total samples (N) ->');
ylabel('y_{1}(n) ->');
title('y_{1}(n) obtained after IDFT of X_{1}(k)');
grid on;

sgtitle('19ucc023 - Mohit Akhouri - Exercise 1b');


