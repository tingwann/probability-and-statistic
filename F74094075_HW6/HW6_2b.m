distribution1 = [25, 10, 1250, 100, 0];
distribution2 = [75, 30, 1750, 300, 0];
X = 0:100;
Y = 1000:2000;

for k = 1:10 %做十次實驗
    z1 = zeros(length(X), length(Y));
    z2 = zeros(length(X), length(Y));

    for i = 1:length(X)
        for j = 1:length(Y)
            z1(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution1(1), distribution1(2), distribution1(3), distribution1(4), distribution1( 5));
        end
    end
   
    for i = 1:length(X)
        for j = 1:length(Y)
            z2(i, j) = bivariateNormalDistribution(X(i), Y(j), distribution2(1), distribution2(2), distribution2(3), distribution2(4), distribution2(5));
        end
    end
    
    decision_boundary = zeros(length(X), length(Y));
    for i = 1:length(X)
        for j = 1:length(Y)
            difference = abs(z1(i, j) - z2(i, j));
            mx = max(z1(i, j), z2(i, j));
            if difference < 0.005*mx
                decision_boundary(i, j) = 1;
            end
        end
    end
    
    figure;
    imagesc(X, Y, decision_boundary); 
    set(gca,'YDir','normal'); 
    xlabel(' X ');
    ylabel(' Y ');
    title('Decision boundary');

    distribution1(2) = distribution1(2) + 5;
    distribution1(4) = distribution1(4) + 50;
end