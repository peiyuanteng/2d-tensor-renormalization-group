function M=magim(h)

T(80)=0;
M(80)=0;

%this pamameter is the external magnetic field.


for i=1:1:80;
%disp('factor');
%disp(r);
T(i)=0.2*i;
%disp(T(i));
x=-1j*pi*T/2;
r0(i)=runmag(x,T(i));
f0(i)=r0(i)*T(i);
%disp(r0(i));
r(i)=runmag(h+x,T(i));
f(i)=r(i)*T(i);
%disp(r(i));
M(i)=(f(i)-f0(i))/h/1.5;

%rm(i)=runmag(-h+x,T(i));
%fm(i)=rm(i)*T(i);
%kai(i)=(fm(i)+f(i)-2*f0(i))/h^2;

end


%plot(T,r,'y',T,r0,'c');
disp('------------------------------------');
plot(T,M);


title('Graph of Magnetization as a function of temperature','FontSize', 12);
xlabel('Temperature','FontSize', 15) % x-axis label
ylabel('Magnetization','FontSize', 15) % y-axis label

end