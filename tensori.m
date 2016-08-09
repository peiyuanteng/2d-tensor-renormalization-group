function  [Tensorout,r] = tensori(h,T)

Tensor(2,2,2,2)=0;

for a= 1:1:2
    for b= 1:1:2
        for c= 1:1:2
            for d= 1:1:2
                if a==1 
                    a0=-1; 
                else
                    a0=1 ;
                end
                if b==1 
                    b0=-1; 
                else
                    b0=1;
                end
                if c==1 
                    c0=-1; 
                else
                    c0=1;
                end
                if d==1 
                    d0=-1; 
                else
                    d0=1;
                end
                    Tensor(a,b,c,d)=tensorh(a0,b0,c0,d0,h,T);
             end
        end
    end
end

Tp(4,4)=0;

for x= 1:1:4
    for y= 1:1:4
       
                    a=mod((x-1),2)+1;
                    b=(x-a)/2+1;
                    c=mod((y-1),2)+1;
                    d=(y-c)/2+1;
                    Tp(x,y)=Tensor(a,b,c,d);
     end
end


[U,S,V] = svd (Tp);


%disp(S);

%find the svd matices
d(4)=0;

for i= 1:1:4
    d(i)=sqrt(S(i,i));
end
r=d(1);
%disp(d);

M(4,2,2)=0;

for i= 1:1:4
    for x= 1:1:4    
                    a=mod((x-1),2)+1;
                    b=(x-a)/2+1;

M(i,a,b)=d(i)*U(x,i);

    end
end

Tensorout(4,4,4,4)=0;

for a= 1:1:4
    for b= 1:1:4
        for c= 1:1:4
            for d= 1:1:4
                value=0;
                    for i1= 1:1:2 
                        for i2= 1:1:2     
                            for i3= 1:1:2      
                                for i4= 1:1:2
                   
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