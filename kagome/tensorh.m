function t= tensorh(a,b,c,h,T)
J=1;
beta=1/T;
%disp(h);
%disp(beta);
t=exp(beta*J*(a*b+b*c+c*a)+0.5*h*beta*(a+b+c));
%disp(t);
end