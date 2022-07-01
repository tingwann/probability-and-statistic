A = [72.2, 31.9, 26.5, 29.1, 27.3, 8.6, 22.3, 26.5, 20.4, 12.8, 25.1, 19.2, 24.1, 58.2, 68.1, 89.2, 55.1, 9.4, 14.5, 13.9, 20.7, 17.9, 8.5, 55.4, 38.1, 54.2, 21.5, 26.2, 59.1, 43.3];
M =  mean(A);
fprintf("sample mean: %f\n" ,M);
C = median(A);
fprintf("sample median: %f\n" ,C);
histogram(A,8:8:96,Normalization="probability");
set(gca , 'xtick' , [12,20,28,36,44,52,60,68,76,84,92]);
set(gca , 'xticklabel' , [12,20,28,36,44,52,60,68,76,84,92]);
xlabel('percentage of the families that are in the upper income level');
ylabel('Relative Frequency');
title('Relative frequency histogram of 1-25');
tm = trimmean(A,20);
fprintf("10 percent trimmed mean: %f\n" ,tm);