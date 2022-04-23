function roi = helperComputeROI(imageCorners3d, tolerance, heading)
%helperComputeROI computes ROI in lidar coordinate system using
%   checkerboard 3d corners in camera coordinate system
%
% This is an example helper function that is subject to change or removal in
% future releases.

% Copyright 2019-2020 The MathWorks, Inc.

%quatRot = quaternion([rotX,rotY,rotZ],'eulerd','XYZ','point');

quatRotT1 = quaternion([90.0,0.0,0.0],'eulerd','XYZ','point');
quatRotT2 = quaternion([0.0,0.0,90.0],'eulerd','XYZ','point');
quatRot = quaternion([0.0,0.0,heading],'eulerd','XYZ','point');

imageNum = size(imageCorners3d, 3);
imageCorners3dRotT1 = zeros(4, 3, imageNum);
imageCorners3dRotT2 = zeros(4, 3, imageNum);
imageCorners3dRot = zeros(4, 3, imageNum);

for i = 1:imageNum
    imageCorners3dRotT1(:,:,i) = rotateframe(quatRotT1,imageCorners3d(:,:,i));
    imageCorners3dRotT2(:,:,i) = rotateframe(quatRotT2,imageCorners3dRotT1(:,:,i));
    imageCorners3dRot(:,:,i) = rotatepoint(quatRot,imageCorners3dRotT2(:,:,i));
end

figure

grid on
axis('equal')
view([35,30])

xlabel('X') 
ylabel('Y') 
zlabel('Z') 

%legend({'raw','temp','final'},'Location','southwest')

rawxCamera = reshape(imageCorners3d(:, 1, :), [], 1);
rawyCamera = reshape(imageCorners3d(:, 2, :), [], 1);
rawzCamera = reshape(imageCorners3d(:, 3, :), [], 1);

scatter3(rawxCamera, rawyCamera, rawzCamera, '*');

hold on

xCameraT = reshape(imageCorners3dRotT2(:, 1, :), [], 1);
yCameraT = reshape(imageCorners3dRotT2(:, 2, :), [], 1);
zCameraT = reshape(imageCorners3dRotT2(:, 3, :), [], 1);

scatter3(xCameraT, yCameraT, zCameraT,'o');

xCamera = reshape(imageCorners3dRot(:, 1, :), [], 1);
yCamera = reshape(imageCorners3dRot(:, 2, :), [], 1);
zCamera = reshape(imageCorners3dRot(:, 3, :), [], 1);

scatter3(xCamera, yCamera, zCamera,'+');

hold off

xMaxLidar = max(xCamera) + tolerance;
xMinLidar = min(xCamera) - tolerance;

yMaxLidar = max(yCamera) + tolerance;
yMinLidar = min(yCamera) - tolerance;

zMaxLidar = max(zCamera) + tolerance;
zMinLidar = min(zCamera) - tolerance;

roi = [xMinLidar, xMaxLidar, yMinLidar, yMaxLidar, zMinLidar, zMaxLidar];

end