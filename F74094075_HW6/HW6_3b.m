file = load('MRI_brain_14slices.mat');
myimage = file.MRI_brain;

figure;
imhist(rescale(myimage)); 
title('Intensity histogram');