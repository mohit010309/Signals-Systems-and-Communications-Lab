% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% Code for generating plot of x1(t) = (e^-t)cos(2*pi*t)

t = 0 : 0.001 : 2;
a = exp(-t);
b = cos(2*pi*t);
x1 = a.*b;
plot(t,x1);
xlabel('time(t) -> ');
ylabel('x_{1}(t) -> ');
title('Mohit Akhouri-19ucc023 - Exercise1\_a','x_{1}(t) = e^{-t}cos(2\pit)');
grid on;