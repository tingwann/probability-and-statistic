

sample1 = exprnd(10,100,1000000);
sample1_bar = mean(sample1);
figure
histogram(sample1_bar,100,'Normalization','pdf');
title('n=100');
xlabel('sample mean');
ylabel('probability');

sample2 = exprnd(10,10,1000000);
sample2_bar = mean(sample2);
figure
histogram(sample2_bar,100,'Normalization','pdf');
xlabel('sample mean');
ylabel('probability');
title('n=10');