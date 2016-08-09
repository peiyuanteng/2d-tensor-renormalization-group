function  [Tensorout,r] = tensor(D,Din,Tensor)


D2=Din*Din;
Tp(D2,D2)=0;

for x= 1:1:D2
    for y= 1:1:D2
       
                    a=mod((x-1),Din)+1;
                    b=(x-a)/Din+1;
                    c=mod((y-1),Din)+1;
                    d=(y-c)/Din+1;
                    Tp(x,y)=Tensor(a,b,c,d);
     end
end


[U,S,V] = svd (Tp);




%find the svd matices
d(D)=0;

for i= 1:1:D
    d(i)=sqrt(S(i,i));
end
r=d(1);
%disp(d);

M(D,Din,Din)=0;

for i= 1:1:D
    for x= 1:1:D2    
                    a=mod((x-1),Din)+1;
                    b=(x-a)/Din+1;
M(i,a,b)=d(i)*U(x,i);

    end
end

Tensorout(D,D,D,D)=0;

for a= 1:1:D
    for b= 1:1:D
        for c= 1:1:D
            for d= 1:1:D
                value=0;
                    for i1= 1:1:Din 
                        for i2= 1:1:Din     
                            for i3= 1:1:Din      
                                for i4= 1:1:Din
                   
                                    value=value+M(a,i4,i1)*M(b,i1,i2)*M(c,i2,i3)*M(d,i3,i4);
                                    
                                end                                
                            end                            
                        end
                    end
                   Tensorout(a,b,c,d)=value;
             end
        end
    end
end
%disp(Tensorout);
end