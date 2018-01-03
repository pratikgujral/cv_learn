% Reading images
dolphin = imread('../input_files/dolphin.jpg');
figure;
image(dolphin, 'Parent', subplot(121));

% Generate Gaussian Noise
sigma = 80; % Try changing values to 2, 10, 32, 64, 80
noise_mat = randn(size(dolphin)) .* sigma;
% Add noise to image
noisy_img = dolphin + uint8(noise_mat);

image(noisy_img, 'Parent', subplot(122));