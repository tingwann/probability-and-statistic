function b = binomial(x,n,p)
    tmp_p = 1;
    tmp_q = 1;
    for i = 1:x
        tmp_p = tmp_p*p;
    end
    for j = 1:(n-x)
        tmp_q = tmp_q*(1-p);
    end
    b = nchoosek(n,x) * tmp_p * tmp_q;
end
