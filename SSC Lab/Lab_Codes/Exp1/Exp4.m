% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% Calculation output of LTI system

RC=1; %defining time constant = 1
T=0.001;
t=0:T:2-T; %defining range for t
a=1/(1+(RC/T)); %defining 'a'
b=-1/(1+(T/RC)); %defining 'b'
x=[1 zeros(1,1999)]; %defining impulse response del(t)
y=zeros(1,2000); %initializing y
for k=1:2000 %algorithm to find convolution
    if k==1 
        y(k)=a*x(1);
    else
        y(k)=a*x(k)-b*y(k-1);
    end
end
%using conv function on h and x
h=y;
x=(t>=0)+(-1*(t>=1));
y1=conv(x,h);
stem(y1);
xlabel('time(t) ->');
ylabel('x(n) conv h(n) ->');
title('Mohit Akhouri-19ucc023 - Exercise4','Output of the LTI system (RC Filter)');
grid on;


