output = zeros(1,1000);
for i=1:1000
    result = machine(10000, 2);
    answer = length(find(result == 1));
    output(1, i) = answer;
end

save('HW2_1b', 'output');

histogram(output,130:6:280,Normalization="probability");
set(gca , 'xtick' , 133:6:277);
set(gca , 'xticklabel' , 133:6:277);
xlabel('number of defective products');
ylabel('Relative Frequency');
title('Relative frequency histogram of 1b');