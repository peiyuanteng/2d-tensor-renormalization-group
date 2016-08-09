function number=checkzero(hr,T)
%this function checks yang lee theorem
number=0;
x(1000)=0;
for n=1:1:1000;
x(n)=-50+rand*100;
r(n)=runmagr(hr+x(n)*1j,T);

if r(n)<0.001
    number=number+1;
end


end