% Reading the images
dolphin = imread('../input_files/dolphin.jpg');
bicycle = imread('../input_files/bicycle.jpg');
imshow(dolphin);
imshow(bicycle);

% Ensuring images have the same size
disp(size(dolphin));
disp(size(bicycle));

% Addition
add = dolphin + bicycle; % class: uint8. If summed pixel value >255, modulo additon will occur
add2 = dolphin/2 + bicycle/2;
imshow(add);
imshow(add2);

% Subtraction
subtract = bicycle - dolphin; % Order matters. Modulo subtraction occurs
imshow(subtract);

% Multiplying with scaler
imshow(dolphin .* 1.5); % Image gets brighter

% Dividing by scaler
imshow(dolphin ./ 2); % Same as multiplying by .5