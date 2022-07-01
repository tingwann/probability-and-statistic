rng(0,'twister');
x = input("please input x (the question require that x = 10000):");
p = rndom_pick(x);

figure
bar(x,p/x, 1)
xlabel('x')
ylabel('Probability')
