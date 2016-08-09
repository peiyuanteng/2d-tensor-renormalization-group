function M=zeroks(T,hr)
% this function calculate r which is related to zeros on any Re(h)=hr, T

N=500;
h(N)=0;
r(N)=0;
for n=1:1:N;

h(n)=1*n;

%k=h(n)*1j
r(n)=runmagr(h(n)*1j+hr,T);
disp(r(n));
end
plot(h,r);


title('zeros','FontSize', 12);
xlabel('h','FontSize', 15) % x-axis label
ylabel('r','FontSize', 15) % y-axis label
legend()

end