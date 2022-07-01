function samplePoints = HW7_1a(n) 
    samplePoints = zeros(1, 10^6); 
    for i=1:n 
        r = rand(1, 10^6); 
        samplePoints = samplePoints + r;
    end
end