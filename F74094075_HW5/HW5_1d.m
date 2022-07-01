t = zeros(25,10);
mu = [0 , 5.5,6.0,6.5,7.0,7.5,8.0,8.5,9.0,9.5];
for i=1:25
    t(i,1) = i-1;
    for j=2:10 
        if(i==1)
            t(i,j) = poisson(i-1, mu(j));

        else
            t(i,j) = t(i-1,j) + poisson(i-1, mu(j));

        end

    end
end
T = array2table(t , 'VariableNames',{'r','μ = 5.5','μ = 6.0','μ = 6.5','μ = 7.0','μ = 7.5','μ = 8.0','μ = 8.5','μ = 9.0','μ = 9.5'});
display(T);