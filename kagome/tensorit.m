
function [y1,y2,y3,y4,y5,y6,y7,y8,r] = tensorit(x1,x2,x3,x4,x5,x6,x7,x8)
% this function calculate one step of thensor iteration.
format long;
%initialization

A=zeros(4);

A(1,1)=x1^2+x2^2;

A(1,2)=x1*x5+x2*x6;

A(1,3)=x1*x3+x2*x4;

A(1,4)=x3*x5+x4*x6;


A(2,1)=x1*x5+x2*x6;

A(2,2)=x5^2+x6^2;

A(2,3)=x1*x7+x2*x8;

A(2,4)=x7*x5+x8*x6;


A(3,1)=x1*x3+x2*x4;

A(3,2)=x1*x7+x2*x8;

A(3,3)=x3^2+x4^2;

A(3,4)=x3*x7+x4*x8;



A(4,1)=x3*x5+x4*x6;

A(4,2)=x7*x5+x8*x6;

A(4,3)=x3*x7+x4*x8;

A(4,4)=x7^2+x8^2;
%disp(A);
%for i=1:1:4
% for  j=1:1:4
 %     if (A(i,j)<=1E-20) A(i,j)=0; end
%  end
% end


%disp(A);
%svd
[U,S,V] = svd (A);




%find the svd matices
d(4)=0;
d(1)=sqrt(S(1,1));
d(2)=sqrt(S(2,2));
d(3)=sqrt(S(3,3));
d(4)=sqrt(S(4,4));
sort(d,'descend');
%disp(d);

r=d(1)*d(1);

if (U(1,1)<0) 
 U=-U;
 V=-V;
end
%disp(U);
%disp(S);
%disp(V);
    
Tp(2,2,2)=0;

Tp(1,1,1)=d(1)*U(1,1);
Tp(1,1,2)=d(1)*U(2,1);
Tp(1,2,1)=d(1)*U(3,1);
Tp(1,2,2)=d(1)*U(4,1);

Tp(2,1,1)=d(2)*U(1,2);
Tp(2,1,2)=d(2)*U(2,2);
Tp(2,2,1)=d(2)*U(3,2);
Tp(2,2,2)=d(2)*U(4,2);

%disp(Tp);


%y1
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(1,b,a)*Tp(1,c,b)*Tp(1,a,c);
sum=sum+x;
             end
        end
    end
y1=sum;
y1=y1/r;



%if (y1<1E-17) y1=0; end
%disp(y1);
%y2
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(1,b,a)*Tp(1,c,b)*Tp(2,a,c);
sum=sum+x;
             end
        end
    end
y2=sum;
y2=y2/r;
%if (y2<1E-17) y1=0; end
%disp(y2);
%y3
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(1,b,a)*Tp(2,c,b)*Tp(1,a,c);

sum=sum+x;
             end
        end
    end
y3=sum;
y3=y3/r;

%if (y3<1E-17) y1=0; end
%disp(y3);

%y4
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(1,b,a)*Tp(2,c,b)*Tp(2,a,c);
sum=sum+x;
             end
        end
    end
y4=sum;
y4=y4/r;
%if (y4<1E-17) y1=0; end

%disp(y4);

%y5
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(2,b,a)*Tp(1,c,b)*Tp(1,a,c);
sum=sum+x;
             end
        end
    end
y5=sum;
y5=y5/r;

%if (y5<1E-17) y1=0; end
%disp(y5);
%y6
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(2,b,a)*Tp(1,c,b)*Tp(2,a,c);
sum=sum+x;
             end
        end
    end
y6=sum;
y6=y6/r;

%disp(y6);
%if (y6<1E-17) y1=0; end
%y7
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(2,b,a)*Tp(2,c,b)*Tp(1,a,c);
sum=sum+x;
             end
        end
    end
y7=sum;
y7=y7/r;
%if (y7<1E-17) y1=0; end
%disp(y7);
%y8
sum=0;
    for a= 1:1:2
        for b= 1:1:2
            for c= 1:1:2

x=Tp(2,b,a)*Tp(2,c,b)*Tp(2,a,c);
sum=sum+x;
             end
        end
    end
y8=sum;
y8=y8/r;
%if (y8<1E-17) y1=0; end
%disp(y8);

end


