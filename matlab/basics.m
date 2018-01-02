% Reading an image
im =  imread('../input_files/watch.jpg');

% Extracting R,G,B components from image
imred = im(:,:,1);
imgreen = im(:,:,2);
imblue = im(:,:,3);

% Display images
imshow(im);
% using figure to open other images in separate windows. If not, exisitng
% figure window will be overwritten
figure, imshow(imred); % Figure 2
figure, imshow(imgreen); % Figure 3
figure, imshow(imblue); % Figure 4

% Size of image
disp(size(im));

% Data type
disp(class(im));

% Cropping an image
% Rows 100 to 250; columns 280 to 450; all colors. NOTE: Both numbers in
% given ranges are INCLUSIVE
imshow(im(100:250, 280:450, :));
