function result = bivariateNormalDistribution(X, Y, ux, vx, uy, vy, rho)

    z = ((X-ux)^2)/(vx^2) + ((Y-uy)^2)/(vy^2) - (2*rho*(X-ux)*(Y-uy))/(vx*vy);

    result = (1/(2*pi*vx*vy*sqrt(1-rho^2)))*exp((-z)/(2*(1-rho^2)));
    
end

