function M=mag(h)

T(40)=0;
M(40)=0;

%h0 is the external magnetic field.
D=2;
h0=0;

for i=1:1:40;

T(i)=0.1*i;
%disp(T(i));
%x=-1j*pi*T/2;
f=iterator(D,h0+h,T(i));
f0=iterator(D,h0,T(i));

M(i)=(f-f0)/h;

%rm(i)=runmag(-h+x,T(i));
%fm(i)=rm(i)*T(i);
%kai(i)=(fm(i)+f(i)-2*f0(i))/h^2;
disp(M(i));
end


%plot(T,r,'y',T,r0,'c');
%disp('------------------------------------');
plot(T,M);


title('Graph of Magnetization as a function of temperature','FontSize', 12);
xlabel('Temperature','FontSize', 15) % x-axis label
ylabel('Magnetization','FontSize', 15) % y-axis label

end