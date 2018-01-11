% Reading the image
img = imread('../input_files/watch.jpg');
imshow(img);

% Adding salt and pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
figure, imshow(noisy_img);

% Applying the median filter
median_filtered = medfilt2(noisy_img);
figure, imshow(median_filtered);