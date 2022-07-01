function p = poisson(x,m)
    tmp_x = 1;
    for i = 1:x
        tmp_x = tmp_x*i;
    end
    p = ((2.7182818285 ^ (-m)) * m ^ x)/tmp_x;
end
