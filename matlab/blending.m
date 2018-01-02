% Reading images
dolphin = imread('../input_files/dolphin.jpg');
bicycle = imread('../input_files/bicycle.jpg');
imshow(dolphin);
figure, imshow(bicycle);

figure, imshow(blend(dolphin, bicycle, .7)); % More of dolphin
figure, imshow(blend(dolphin, bicycle, .3)); % More of bicycle

function output = blend(a, b, alpha)
    output = a * alpha + (1 - alpha) * b;
end