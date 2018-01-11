watch = imread('../input_files/watch.jpg');
imshow(watch);

dial = watch(75:270, 300:475, :);
imshow(dial);

[y x] = findTemplate_2D(watch, dial);
disp([y x]);


function [yIndex xIndex] = findTemplate_2D(template, img)
    c = normxcorr2(template, img);
    [yRaw xRaw] = find(c == max(c(:)));
    yIndex = yRaw - size(template,1) + 1;
    xIndex = xRaw - size(template,2) + 1;
end
