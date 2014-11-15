function [x,y] = determine_position(A)
temp = num2cell(A);
[x1, x2, x3, x4, y1, y2, y3, y4] = temp{:};
if x1 == 1023 || x2 == 1023 || x3 == 1023 || x4 == 1023
    x = 1;
    y = 1;
else
    [ax,ay,bx,by] = axial_points(x1, x2, x3, x4, y1, y2, y3, y4);
    theta = determine_angle(ax,ay,bx,by);
    [ax,ay] = rotate_point(theta, ax, ay);
    [bx,by] = rotate_point(theta, bx, by);
    [x, y] = midpoint(ax,ay,bx,by);
end
end

function [mx,my] = midpoint(x1,y1,x2,y2)
mx = (x1+x2)/2;
my = (y1+y2)/2;
end
