function  Tensor = tensortest(h,T)

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
end