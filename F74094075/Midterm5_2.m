b1 = binopdf(0:10000, 10000, 0.01);
b2 = binopdf(0:10000, 10000, 0.1);
b3 = binopdf(0:10000, 10000, 0.2);
b4 = binopdf(0:10000, 10000, 0.5);

p1 = poisspdf(0:10000, 100);
p2 = poisspdf(0:10000, 1000);
p3 = poisspdf(0:10000, 2000);
p4 = poisspdf(0:10000, 5000);

subplot(2,2,1);
bar(0:10000,[b1;p1]);
xlabel('Observation');
ylabel('Probability');
title('p = 0.01');
legend('Binomial Distribution','Poisson Distribution');

subplot(2,2,2);
bar(0:10000,[b2;p2]);
xlabel('Observation');
ylabel('Probability');
title('p = 0.1');
legend('Binomial Distribution','Poisson Distribution');

subplot(2,2,3);
bar(0:10000,[b3;p3]);
xlabel('Observation');
ylabel('Probability');
title('p = 0.2');
legend('Binomial Distribution','Poisson Distribution');

subplot(2,2,4);
bar(0:10000,[b4;p4]);
xlabel('Observation');
ylabel('Probability');
title('p = 0.5');
legend('Binomial Distribution','Poisson Distribution');


