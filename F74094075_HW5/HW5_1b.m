prompt = "please input x :";
x = input(prompt);
prompt = "please input λ :";
lambda = input(prompt);
prompt = "please input t :";
t = input(prompt);
answer = poisson(x , lambda*t);

fprintf("b(%d:%f) = %f \n" , x , lambda * t , answer);