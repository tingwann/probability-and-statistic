file = load('MRI_brain_14slices.mat');
myimage = file.MRI_brain(:, :, 6); 
figure; 
imshow(myimage);
imagesc(myimage),colormap(gray) ,set(gca, 'dataaspectratio', [1 1 1]) ;
title('No.6');