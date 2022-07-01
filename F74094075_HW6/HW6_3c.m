file = load('MRI_brain_14slices.mat');
myimage = file.MRI_brain;
myimage = rescale(myimage); 
range1 = 0.101961;
range2 = 0.192157;
CSF = zeros(880, 640, 14);
gray_matter = zeros(880, 640, 14);
white_matter = zeros(880, 640, 14);

for i=1:880
    for j = 1:640
        for k = 1:14
            if myimage(i, j, k) <= range1 
                CSF(i, j, k) = 1;
            elseif myimage(i, j, k) >= range1 && myimage(i, j, k) <= range2
                gray_matter(i, j, k) = 1;
            else
                white_matter(i, j, k) = 1; 
            end
        end
    end
end

figure;
imshow(CSF(:, :, 6));
title('CSF and background ');
figure;
imshow(gray_matter(:, :, 6));
title('gray matter');
figure;
imshow(white_matter(:, :, 6));
title('white matter ');