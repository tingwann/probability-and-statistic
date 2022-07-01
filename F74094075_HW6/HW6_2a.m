distribution_case1 = [25, 30, 1250, 300, 0; 75, 30, 1750, 300, 0];
distribution_case2 = [25, 20, 1250, 200, 0; 75, 30, 1750, 300, 0];
X = 0:100;
Y = 1000:2000;

z1_case1 = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
       z1_case1(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution_case1(1, 1), distribution_case1(1, 2), distribution_case1(1, 3), distribution_case1(1, 4), distribution_case1(1, 5));
    end
end


figure
imagesc(X, Y, z1_case1)
set(gca,'YDir','normal'); 
xlabel(' X ');
ylabel(' Y ');
title('Case1 : bivariate normal distribution ( ux = 25 )');

z2_case1 = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
       z2_case1(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution_case1(2, 1), distribution_case1(2, 2), distribution_case1(2, 3), distribution_case1(2, 4), distribution_case1(2, 5));
    end
end


figure
imagesc(X, Y, z2_case1);
set(gca,'YDir','normal'); 
xlabel(' X ');
ylabel(' Y ');
title('Case1 : bivariate normal distribution ( ux = 75 )');



z1_case2 = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        z1_case2(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution_case2(1, 1), distribution_case2(1, 2), distribution_case2(1, 3), distribution_case2(1, 4), distribution_case2(1, 5));
    end
end
figure
imagesc(X, Y, z1_case2); 
set(gca,'YDir','normal'); 
xlabel(' X ');
ylabel(' Y ');
title('Case2 : bivariate normal distribution with ( ux = 25 )');

z2_case2 = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        z2_case2(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution_case2(2, 1), distribution_case2(2, 2), distribution_case2(2, 3), distribution_case2(2, 4), distribution_case2(2, 5));
    end
end
figure
imagesc(X, Y, z2_case2); 
set(gca,'YDir','normal');
xlabel(' X ');
ylabel(' Y ');
title('Case2 : bivariate normal distribution ( ux = 75 )');


case1_decision_boundary = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        difference = abs(z1_case1(i, j) - z2_case1(i, j));
        mx = max(z1_case1(i, j), z2_case1(i, j));
        if difference < 0.005*mx
            case1_decision_boundary(i, j) = 1;
        end
    end
end
figure;
imagesc(X, Y, case1_decision_boundary); 
set(gca,'YDir','normal'); 
xlabel(' X ');
ylabel(' Y ');
title('Case1 : decision boundary');

case2_decision_boundary = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        difference = abs(z1_case2(i, j) - z2_case2(i, j));
        mx = max(z1_case2(i, j), z2_case2(i, j));
        if difference < 0.005*mx
            case2_decision_boundary(i, j) = 1;
        end
    end
end
figure;
imagesc(X, Y, case2_decision_boundary); 
set(gca,'YDir','normal'); 
xlabel(' X ');
ylabel(' Y ');
title('Case2 : decision boundary');