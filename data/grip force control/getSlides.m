function [slip_z, spin] = getSlides(filename)
mc = readtable(filename, "FileType", "delimitedtext", ReadVariableNames=false);
mc = mc(4:end, :);

gripperP1 = table2array(mc(1:51, 3:5));
gripperP1 = mean(gripperP1);

boxP1 = table2array(mc(1:51, 6:8));
boxP1 = mean(boxP1);

gripperP2 = table2array(mc(end-100:end, 3:5));
gripperP2 = mean(gripperP2);

boxP2 = table2array(mc(end-100:end, 6:8));
boxP2 = mean(boxP2);

slip_z = abs((gripperP2(3) - gripperP1(3)) - (boxP2(3) - boxP1(3)));

A = boxP1 - gripperP1;
B = boxP2 - gripperP2;
theta1 = getAngle(A(1), A(2), A(3));
theta2 = getAngle(B(1), B(2), B(3));
spin = abs(theta2 - theta1);
end

function theta = getAngle(X1, Y1, Z1)
OA_magnitude = sqrt(X1^2 + Y1^2 + Z1^2);

cos_theta = Z1 / OA_magnitude;
theta_rad = acos(cos_theta); 
theta_deg = rad2deg(theta_rad); 

theta = theta_deg;
end