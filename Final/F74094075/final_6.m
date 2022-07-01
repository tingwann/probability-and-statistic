x = 0:2:200;
n = [10, 30, 100];
s = zeros(3, 10^5);


for k = 1:3
    for i = 1:10^5
        sample = normrnd(3, 10, n(k), 1);
        v = var(sample);
        v = ((n(k)-1)*v) / 10^2;
        s(k, i) = v;
    end
    y = chi2pdf(x, n(k)-1);
    figure
    histogram(s(k, :), 100, 'Normalization', 'pdf')
    title(n(k))
    ylabel('probility')
 
    hold on
    plot(x, y);
    hold off
end

