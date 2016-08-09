function f=iteratorlog(D,h,Temp,lambda)
if D>64
    error('Bond dimension should be less than 64');
end
if D<16
expand=D;
else
    expand=16;
end
f=0;
factor=1;
%disp(expand);
%format long;
[T0,r0] = tensori(h,Temp);
%T0=T0/r0/r0;
T0=T0*lambda;
factor=factor/2;
f=f+log(r0^2)*factor;
factor=factor/2;
disp(r0);
[T1,r1] = tensor(expand,4,T0);
%T1=T1/r1/r1;
T1=T1*lambda;
f=f+log(r1^2)*factor;
factor=factor/2;
disp(r1);
[T,r] = tensor(D,expand,T1);
%T=T/r/r;
f=f+log(r^2)*factor;
factor=factor/2;
T=T*lambda;
disp(r);
for i=1:1:50
    [T,r] = tensor(D,D,T);
    %T=T/r^2;
    T=T*lambda;
    disp(r);
    f=f+log(r^2)*factor;
    factor=factor/2;
end
%disp(r);
f=f*Temp;
%disp(f);

end