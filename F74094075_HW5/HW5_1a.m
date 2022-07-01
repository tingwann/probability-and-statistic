prompt = "please input x :";
x = input(prompt);
prompt = "please input n :";
n = input(prompt);
prompt = "please input p :";
p = input(prompt);

answer = binomial(x,n,p);

fprintf("b(%d:%d,%f) = %f \n" , x , n , p , answer);