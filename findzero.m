function M=findzero()
% this function makes a scatter plot of the potiential zeros on the
% T--Im(h) plane
D=4;
N=1000;
h(N)=0;
T(N)=0;
r(N)=0;
hold on;
for n=1:1:N;
x=rand*1 ;
y=rand*5+1;
h(n)=x;
T(n)=y;
r(n)=iteratorr(D,h(n)*1j,T(n));

if r(n)<0.1
scatter(y,x,'.');

disp(n);
disp(r(n));
end
end


title('Distribution of zeros in the h-T plane','FontSize', 12);
xlabel('T','FontSize', 15) % x-axis label
ylabel('h','FontSize', 15) % y-axis label
%legend()

end