X1_samplePoints = HW7_1a(1);
mean1 = mean(X1_samplePoints);
X1 = 0:0.01:1;
x1_standard_deviation = std(X1_samplePoints);
x1_normal_distribution = normpdf(X1, mean1, x1_standard_deviation);
figure;
histogram(X1_samplePoints, 100, 'Normalization', 'pdf');
hold on;
plot(X1, x1_normal_distribution, 'LineWidth', 2);
title('relative frequency histogram and normal distribution when n = 1');
hold off;


X2_samplePoints = HW7_1a(2);
mean2 = mean(X2_samplePoints);
X2 = 0:0.01:2;
x2_standard_deviation = std(X2_samplePoints);
X2_normal_distribution = normpdf(X2, mean2, x2_standard_deviation);
figure
histogram(X2_samplePoints, 100, 'Normalization', 'pdf');
hold on;
plot(X2, X2_normal_distribution, 'LineWidth', 2);
title('relative frequency histogram and normal distribution when n = 2');
hold off;


X20_samplePoints = HW7_1a(20);
mean20 = mean(X20_samplePoints);
x20_standard_deviation = std(X20_samplePoints);
X20 = 0:0.01:20;
X20_normal_distribution = normpdf(X20, mean20, x20_standard_deviation);
figure
histogram(X20_samplePoints, 100, 'Normalization', 'pdf');
hold on;
plot(X20, X20_normal_distribution, 'LineWidth', 2);
title('relative frequency histogram and normal distribution when n = 20');
hold off;
