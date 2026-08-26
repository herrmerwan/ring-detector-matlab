im = imread("unprocessed_fig_46.png");
CT = 2*pi*0.33;
rings = Ring_detector(im, 4, 50, 5, CT, 0.8, -50, 4, true, false);
%%
y = rings(:, 1);
x = rings(:, 2);
radii = rings(:, 3);
centers = [x,y];

imshow(im);
viscircles(centers, radii, 'LineWidth',1);