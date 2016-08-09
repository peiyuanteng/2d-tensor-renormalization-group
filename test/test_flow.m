h0=0.0001;
t0=0.0001;
N=25;
u(N)=0;
v(N)=0;
h(N)=0;
t(N)=0;
D=2;
for i=1:1:N
    for j=1:1:N
        h(i)=0.001+i*0.1;
        t(j)=0.5+j*0.2;
        r=iteratorr(D,h(i),t(j));
        rh=iteratorr(D,h(i)+h0,t(j));
        rt=iteratorr(D,h(i),t(j)+t0);
        u(i,j)=(rh-r)/(rt-r);
        v(i,j)=1;
        disp((i-1)*25+j);
    end
end
%quiver(t,h,u,v);
streamslice(t,h,u,v);