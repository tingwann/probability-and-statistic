N = ['1';' ';'2';' ';' ';'3';' ';' ';' ';'4';' ';' ';' ';' ';'5';' ';' ';' ';' ';' ';'6';' ';' ';' ';' ';' ';' ';'7';' ';' ';' ';' ';' ';' ';' '];
R = [0;1;0;1;2;0;1;2;3;0;1;2;3;4;0;1;2;3;4;5;0;1;2;3;4;5;6;0;1;2;3;4;5;6;7];
p1= zeros(35,1); 
p2= zeros(35,1);
p3 = zeros(35,1);
p4 = zeros(35,1);
p5= zeros(35,1);
p6 = zeros(35,1);
p7 = zeros(35,1);
p8 = zeros(35,1);
p9= zeros(35,1);
p2_5 = zeros(35,1);

i = 1;
for n=1:7
    for r=0:n
        
            if(r==0)
                p1(i) =binomial(r,n,0.1);
                p2(i) = binomial(r,n,0.2);
                p2_5(i) = binomial(r,n,0.25);
                p3(i) = binomial(r,n,0.3);
                p4(i) = binomial(r,n,0.4);
                p5(i) = binomial(r,n,0.5);
                p6(i) = binomial(r,n,0.6);
                p7(i) = binomial(r,n,0.7);
                p8(i) = binomial(r,n,0.8);
                p9(i) = binomial(r,n,0.9);
            else
                p1(i) =binomial(r,n,0.1) + p1(i-1);
                p2(i) = binomial(r,n,0.2)+ p2(i-1);
                p2_5(i) = binomial(r,n,0.25)+ p2_5(i-1);
                p3(i) = binomial(r,n,0.3)+ p3(i-1);
                p4(i) = binomial(r,n,0.4)+ p4(i-1);
                p5(i) = binomial(r,n,0.5)+ p5(i-1);
                p6(i) = binomial(r,n,0.6)+ p6(i-1);
                p7(i) = binomial(r,n,0.7)+ p7(i-1);
                p8(i) = binomial(r,n,0.8)+ p8(i-1);
                p9(i) = binomial(r,n,0.9)+ p9(i-1);
            end
        i = i +  1;
    end
end
i = 1;
for n=1:7
    for r=0:n
                p1(i) =round(p1(i),4);
                p2(i) = round(p2(i),4);
                p2_5(i) = round(p2_5(i),4);
                p3(i) = round(p3(i),4);
                p4(i) = round(p4(i),4);
                p5(i) = round(p5(i),4);
                p6(i) = round(p6(i),4);
                p7(i) = round(p7(i),4);
                p8(i) = round(p8(i),4);
                p9(i) = round(p9(i),4);
        i = i +  1;
    end
end

T = table(N,R,p1,p2,p2_5,p3,p4,p5,p6,p7,p8,p9,'VariableNames',{'n','r','p = 0.1','p = 0.2','p = 0.25','p = 0.3','p = 0.4','p = 0.5','p = 0.6','p = 0.7','p = 0.8' , 'p = 0.9'});

display(T);
