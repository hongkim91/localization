function [x,y] = determine_position(A)
A = get_valid_points(A);
n = length(A)/2;

if n == 4 || n == 3
    [ax,ay,bx,by] = axial_points(A);
    theta = determine_angle(ax,ay,bx,by);
    [ax,ay] = rotate_point(theta, ax, ay);
    [bx,by] = rotate_point(theta, bx, by);
    [x, y] = midpoint(ax,ay,bx,by);
else
    x = 1;
    y = 1;
end
end

function [mx,my] = midpoint(x1,y1,x2,y2)
mx = (x1+x2)/2;
my = (y1+y2)/2;
end
