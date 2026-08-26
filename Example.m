%Load your image
im = imread("unprocessed_fig_46.png");
%Circle threshold, 33% of a circle, keep the 2*pi the same
%change the 0.33 between 0 and 1 for this ratio
CT = 2*pi*0.33; 
%Detect rings, parameters (image, Rmin, Rmax, CT, sigma, Curv_thresh,
%vote_thresh, Sub_pxl (if you want sub-pixel results, Grad (if you want to
%run on the gradient of the image instead if the original image has circles
%and not rings)
rings = Ring_detector(im, 4, 50, 5, CT, 0.8, -50, 4, true, false);

%% Plot the ring on the image
y = rings(:, 1);
x = rings(:, 2);
radii = rings(:, 3);
centers = [x,y];

imshow(im);
viscircles(centers, radii, 'LineWidth',1);