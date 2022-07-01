p = 0.05:0.05:0.95;
n = 100;
mean = zeros(1,length(p));
for i = 1:length(p)
    mean(i) = (1-2*p(i))/sqrt(n*p(i)*(1-p(i)));
end

figure()
plot(p,mean)
xlabel("p")
ylabel("skewness of a random variable ")
title("skewness of a random variable vs probability")

n = 0:100;

figure()
bar(n, binopdf(n,100,0.1))
xlabel('n')
ylabel('Probability')
title("Binomial distributions p = 0.1")

figure()
bar(n, binopdf(n,100,0.3))
xlabel('n')
ylabel('Probability')
title("Binomial distributions p = 0.3")

figure()
bar(n, binopdf(n,100,0.5))
xlabel('n')
ylabel('Probability')
title("Binomial distributions p = 0.5")

figure()
bar(n, binopdf(n,100,0.7))
xlabel('n')
ylabel('Probability')
title("Binomial distributions p = 0.7")

figure()
bar(n, binopdf(n,100,0.9))
xlabel('n')
ylabel('Probability')
title("Binomial distributions p = 0.9")

