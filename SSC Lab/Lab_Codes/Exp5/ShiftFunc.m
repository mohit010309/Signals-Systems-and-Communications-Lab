function [xt]=ShiftFunc(x,To)
l1=length(x);
t=-To:l1;
for i=1:length(t)
    if(t(i)<0)
        xt(i)=x(t(i)+To+1);
    else
        xt(i)=x(i);
    end
end
end