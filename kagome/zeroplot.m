function number=zeroplot(T)
%this function plot zeros distribution as a functions of Re(h)
h(11)=0;
t(11)=0;
for n=1:1:11;
h(n)=-6+1*n;
t(n)=checkzero(h(n),T);

stem(h,t);
title('Distribution of zeros under different Re(h)','FontSize', 12);
xlabel('Re(h)','FontSize', 15) % x-axis label
ylabel('Number of zeros','FontSize', 15) % y-axis label


end