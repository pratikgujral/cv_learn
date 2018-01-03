% Reading the image and grayscaling
img = imread('../input_files/watch.jpg');
subplot(221);
imshow(img);
title('Original image');
img = rgb2gray(img);
subplot(222);
imshow(img);
title('Grayscaled image');

% Adding noise
sigma = 30; % Greater this value, more intense is the noise (noise scaling)
noise = randn(size(img)) .* sigma;
noisy_img = img + uint8(noise);
subplot(223);
imshow(noisy_img);
axis off;
title('Gaussian noise in grayscaled');

% Creating gaussian filter
filter_size = 11;
filter_sigma = 2; % Greater this value, more is the blurring, as more is the spread of the filter
filter = fspecial('gaussian', filter_size, filter_sigma);

% Applying the filter
smoothed = imfilter(noisy_img, filter);
subplot(224);
imshow(smoothed);
title('Smoothed by Gaussian filter');
