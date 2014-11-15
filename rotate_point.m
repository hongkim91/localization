function [ax,ay] = rotate_point(theta, x, y)
    rotate_matrix = [cos(theta), -sin(theta); sin(theta), cos(theta)];
    rotate = rotate_matrix*[x-512;y-384];
    ax = rotate(1)+512;
    ay = rotate(2)+384;
end
