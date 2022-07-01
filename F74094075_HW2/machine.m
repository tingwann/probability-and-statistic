function [arr] = machine(num , defectiveRate)
    arr = zeros(1, num);
    for i=1:num
        x = 100*rand;
        if (x <= defectiveRate)
            arr(1, i) = 1;
        end
    end