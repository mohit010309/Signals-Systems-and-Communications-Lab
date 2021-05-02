% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% MATLAB code to solve the difference equation with
% input specified as x(t)

RC=1; %defining time constant = 1
T=0.001;
t=0:T:2-T; %defining range for t
a=1/(1+(RC/T)); %defining 'a'
b=-1/(1+(T/RC)); %defining 'b'
x=(t>=0)+(-1*(t>=1));
y=zeros(1,2000); %filling y with zeros
for k=1:2000 %implementing the algorithm using for loop
    if k==1 
        y(k)=a*x(1);
    else
        y(k)=a*x(k)-b*y(k-1);
    end
end
plot(t,y);
ylabel('y(k) ->');
xlabel('time(t) ->');
title('Mohit Akhouri-19ucc023 - Exercise3','Solving Difference Equation');
grid on;