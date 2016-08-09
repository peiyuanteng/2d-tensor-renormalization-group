function M=findzero()
% this function makes a scatter plot of the potiential zeros on the
% T--Im(h) plane
h(1000)=0;
T(1000)=0;
r(1000)=0;


for n=1:1:10000;
x=rand*1 ;
y=rand*5+0.5;
h(n)=x;
T(n)=y;
r(n)=runmagr(h(n)*1j,T(n));

if r(n)<0.01
scatter(y,x,'.');
hold on;

disp(r(n));
end



title('Distribution of zeros in the h-T plane','FontSize', 12);
xlabel('T','FontSize', 15) % x-axis label
ylabel('h','FontSize', 15) % y-axis label
%legend()

end