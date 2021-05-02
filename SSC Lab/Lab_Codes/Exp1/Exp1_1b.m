% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% Code for generating plot of x2(t) = 1 + 1.5cos(2*pi*t) - 0.6cos(4*pi*t)

t = 0 : 0.001 : 2;
x2 = 1 + 1.5*cos(2*pi*t) - 0.6*cos(4*pi*t);
plot(t,x2);
xlabel('time(t) -> ');
ylabel('x_{2}(t) -> ');
title('Mohit Akhouri-19ucc023 - Exercise1\_b','x_{2}(t) = 1 + 1.5cos(2\pit) - 0.6cos(4\pit)');
grid on;