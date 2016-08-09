function t= tensorh(a,b,c,d,h,T)
J=1;
beta=1/T;
%disp(h);
%disp(beta);
t=exp(beta*J*(a*b+b*c+c*d+d*a)+0.5*h*beta*(a+b+c+d));
%disp(t);
end