variable = 0:0.001:0.5;

CSF_mu = 0.0627451; 
CSF_stadard = 0.015;
CSF = normpdf(variable, CSF_mu, CSF_stadard);


gray_matter_mu = 0.14902;
gray_matter_stadard = 0.03;
gray = normpdf( variable, gray_matter_mu, gray_matter_stadard);


white_matter_mu = 0.227451; 
white_matter_stadard = 0.02;
white = normpdf( variable, white_matter_mu, white_matter_stadard);

total = CSF + gray + white;

figure;
hold on;
plot(variable, CSF);
plot(variable, gray);
plot(variable, white);
plot( variable, total);
title('Segmentation of three tissues ');
legend('CSF', 'gray matter', 'white matter', 'total');
hold off;
