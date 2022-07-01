distribution1 = [50, 20, 1500, 200, 0 ];
distribution2 = [50, 20, 1500, 200, 0.3];
distribution3 = [50, 20, 1500, 200, 0.8];
distribution4 = [50, 20, 1500, 200, -0.8];
X = 0:100;
Y = 1000:2000;
z1 = zeros(length(X), length(Y));
z2 = zeros(length(X), length(Y));
z3 = zeros(length(X), length(Y));
z4 = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        z1(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution1(1), distribution1(2), distribution1(3), distribution1(4), distribution1(5));
    end
end

for i = 1:length(X)
    for j = 1:length(Y)
        z2(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution2(1), distribution2(2), distribution2(3), distribution2(4), distribution2(5));
    end
end

for i = 1:length(X)
    for j = 1:length(Y)
        z3(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution3(1), distribution3(2), distribution3(3), distribution3(4), distribution3(5));
    end
end

for i = 1:length(X)
    for j = 1:length(Y)
        z4(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution4(1), distribution4(2), distribution4(3), distribution4(4), distribution4(5));
    end
end

    figure;
    imagesc(X, Y, z1);
    set(gca,'YDir','normal');
    xlabel(' X ');
    ylabel(' Y ');
    titleStr = sprintf('bivariate normal distribution (rho = %f)', distribution1(5));
    title(titleStr);

    figure;
    imagesc(X, Y, z2);
    set(gca,'YDir','normal');
    xlabel('X');
    ylabel(' Y ');
    titleStr = sprintf('bivariate normal distribution (rho = %f)', distribution2(5));
    title(titleStr);

    figure;
    imagesc(X, Y, z3);
    set(gca,'YDir','normal');
    xlabel(' X ');
    ylabel(' Y ');
    titleStr = sprintf('bivariate normal distribution (rho = %f)', distribution3(5));
    title(titleStr);

    figure;
    imagesc(X, Y, z4);
    set(gca,'YDir','normal');
    xlabel('X ');
    ylabel(' Y ');
    titleStr = sprintf('bivariate normal distribution (rho = %f)', distribution4(5));
    title(titleStr);
