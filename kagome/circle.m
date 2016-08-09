function M=circle(T)
% this function plots zeros on the unit circle.
h(1000)=0;
r(1000)=0;

for n=1:1:10000;
x=rand*T*pi ;
h(n)=x;

r(n)=runmagr(h(n)*1j,T);

if r(n)<0.001
z=exp(-2*h(n)*1j/T);   
R=real(z);
I=imag(z);
scatter(R,I,'.');
hold on;

disp(n);
end


axis([-1 1 -1 1])
title('Distributions of zeros in the fugacity plane,','FontSize', 12);
xlabel('Re(z)','FontSize', 15) % x-axis label
ylabel('Im(z)','FontSize', 15) % y-axis label
%legend()

end