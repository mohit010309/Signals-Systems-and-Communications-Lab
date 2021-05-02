% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% Code for generating plot of x3(t) = |cos(2*pi*t)|

t = 0 : 0.001 : 2;
x3 = abs(cos(2*pi*t));
plot(t,x3);
xlabel('time(t) -> ');
ylabel('x_{3}(t) -> ');
title('Mohit Akhouri-19ucc023 - Exercise1\_c','x_{3}(t) = |cos(2\pit)|');
grid on;