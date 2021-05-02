% Name = Mohit Akhouri
% Roll no = 19UCC023
% SSC LAB Batch D1 - Monday ( 2-5 pm )

% This script will illustrate the Gibb's phenonmenon on the signals 
% x1(t) and x2(t)

N = 256; % defining constant N ( total samples )
T = 2; % defining bound on time axis
t = linspace(0,T,N); % defining time axis ( time from 0 to T )

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

xm1_19 = Gibbs_Phenomenon(x1,t,T,N,19); % Gibb's phenomenon for signal x1(t) when M=19
xm1_99 = Gibbs_Phenomenon(x1,t,T,N,99); % Gibb's phenomenon for signal x1(t) when M=99

% plotting approximated signal xm(t) for periodic signal x1(t)
figure;
subplot(2,1,1);
plot(t,xm1_19,'Linewidth',1.5');
xlabel('time(t) ->');
ylabel('x_{M}(t) ->');
title('approximation x_{M}(t) for periodic signal x_{1}(t) for M=19');
grid on;
subplot(2,1,2);
plot(t,xm1_99,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{M}(t) ->');
title('approximation x_{M}(t) for periodic signal x_{1}(t) for M=99');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

xm2_19 = Gibbs_Phenomenon(x2,t,T,N,19); % Gibb's phenomenon for signal x2(t) when M=19
xm2_99 = Gibbs_Phenomenon(x2,t,T,N,99); % Gibb's phenomenon for signal x2(t) when M=99

% plotting approximated signal xm(t) for periodic signal x2(t)
figure;
subplot(2,1,1);
plot(t,xm2_19,'Linewidth',1.5');
xlabel('time(t) ->');
ylabel('x_{M}(t) ->');
title('approximation x_{M}(t) for periodic signal x_{2}(t) for M=19');
grid on;
subplot(2,1,2);
plot(t,xm2_99,'Linewidth',1.5);
xlabel('time(t) ->');
ylabel('x_{M}(t) ->');
title('approximation x_{M}(t) for periodic signal x_{2}(t) for M=99');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');
