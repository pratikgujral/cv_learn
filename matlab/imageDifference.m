% Reading images
dolphin = imread('../input_files/dolphin.jpg');
bicycle = imread('../input_files/bicycle.jpg');
imshow(dolphin);
figure, imshow(bicycle);

% Subtraction
sub = dolphin - bicycle; % Order of subtraction matters
figure, imshow(sub);
figure, imshow(bicycle - dolphin);


% Note: If difference leads to a value < 0, then value is truncated to zero
% Hence, subtraction is leading to loss of information. 
% To preserve image difference, either convert to float or us ethe
% following
sub2 = (dolphin - bicycle) + (bicycle - dolphin);
figure, imshow(sub2);