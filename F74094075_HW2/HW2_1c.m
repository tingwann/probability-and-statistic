ouput3_def = zeros(1,10);
for i=1:10
    output1 = machine(30000, 2);
    output2 = machine(45000, 3);
    output3 = machine(25000, 2);
    result = length(find(output1 == 1)) + length(find(output2 == 1)) + length(find(output3 == 1));
    ouput3_def(1, i) = length(find(output3 == 1)) / result;
end

save('HW2_1c', 'ouput3_def');