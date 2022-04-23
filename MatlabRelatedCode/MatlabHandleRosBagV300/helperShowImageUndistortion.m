function helperShowImageUndistortion(imageFileNames, intrinsic)
% helperShowImageCorners Function to display checkerboard corners
%
% This is an example helper function that is subject to change or removal in
% future releases.

% Copyright 2019 The MathWorks, Inc.

figureH = figure('Position', [0, 0, 480, 320]);

montag_epanel = uipanel('Parent',figureH,'Title','Original Image (left) vs. Corrected Image (right)', 'Position',[0.01,0,1,0.55]);
montag_axes = axes('Parent',montag_epanel,'Color',[0,0,0],'Position',[0 0 1 1],'NextPlot','add');

full_image_panel = uipanel('Parent',figureH,'Title','Full Output View', 'Position',[0.01,0.55,1,0.45]);
full_image_axes = axes('Parent',full_image_panel,'Color',[0,0,0],'Position',[0 0 1 1],'NextPlot','add');

montag_im = imshow([],'Parent',montag_axes);
%imax.NextPlot = 'add';
montag_axes.Position = [0,0,1,1];
axis(montag_axes, 'equal');

full_image_im = imshow([],'Parent',full_image_axes);
%imax.NextPlot = 'add';
full_image_axes.Position = [0,0,1,1];
axis(full_image_axes, 'equal');

numImages = numel(imageFileNames);

for i = 1:numImages
    I = imread(imageFileNames{i});
    % Undistort image
    J = undistortImage(I, intrinsic);
    undistortImageFileName = strrep(imageFileNames{i},'RawImages','UndistortImages');
    imwrite(I, undistortImageFileName);
    F = imfuse(I,J,'montage'); 
    montag_im.CData = F;
    
    J2 = undistortImage(I, intrinsic,'OutputView','full');
    hold(montag_axes,'on');
    full_image_im.CData = J2;
    hold(montag_axes,'off');
    
    logImageFileName = strrep(imageFileNames{i},'RawImages','ImageLogs');
    print(logImageFileName,'-dpng')

    pause(1);
end