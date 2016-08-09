function p=runmagr(h,T)

format long;
x1=tensorh(-1,-1,-1,h,T);
x2=tensorh(-1,-1,1,h,T);
x3=x2;
x4=tensorh(-1,1,1,h,T);
x5=x2;
x6=x4;
x7=x4;
x8=tensorh(1,1,1,h,T);
f=0;
factor=1;
%disp([x1,x2,x3,x4,x5,x6,x7,x8]);
for i=1:1:50
%disp('step')
%disp(i); 

[y1,y2,y3,y4,y5,y6,y7,y8,r] = tensorit(x1,x2,x3,x4,x5,x6,x7,x8);
x1=y1;
x2=y2;
x3=y3;
x4=y4;
x5=y5;
x6=y6;
x7=y7;
x8=y8;
%disp([y1,y2,y3,y4,y5,y6,y7,y8]);
%disp(r);

f=f+log(r)*factor/2/1.5;
factor=factor/3;

end

p=r;

%disp('------------------------------------');
end

function t= tensorh(a,b,c,h,T)
J=1;
beta=1/T;
%disp(h);
%disp(beta);
t=exp(beta*J*(a*b+b*c+c*a)+0.5*h*beta*(a+b+c));
%disp(t);
end