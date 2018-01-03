% Reading image
img = imread('../input_files/peppers.png');
imshow(img);
title('Original image');

% Create Gaussian filter
h_size = 21;
h_sigma = 3;
filter = fspecial('gaussian', h_size, h_sigma);

% Applying filter
smoothed = imfilter(img, filter);
figure;
imshow(smoothed);
title('imfilter(img, filter)');

smoothed = imfilter(img, filter, 0);
figure;
imshow(smoothed);
title('imfilter(img, filter, 0)');

smoothed = imfilter(img, filter, 'circular');
figure;
imshow(smoothed);
title("imfilter(img, filter, 'circular')");

smoothed = imfilter(img, filter, 'replicate');
figure;
imshow(smoothed);
title("imfilter(img, filter, 'replicate')");

smoothed = imfilter(img, filter, 'symmetric');
figure;
imshow(smoothed);
title("imfilter(img, filter, 'symmetric')");