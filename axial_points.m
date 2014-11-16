function [ax,ay,bx,by] = axial_points(A)
    if length(A) == 8
        temp = num2cell(A);
        [x1, x2, x3, x4, y1, y2, y3, y4] = temp{:};
        d1 = distance(x1,y1,x2,y2);
        d2 = distance(x1,y1,x3,y3);
        d3 = distance(x1,y1,x4,y4);
        d4 = distance(x2,y2,x3,y3);
        d5 = distance(x2,y2,x4,y4);
        d6 = distance(x3,y3,x4,y4);
        distances = [d1,d2,d3,d4,d5,d6];
        if max(distances) == d1
            [ax,ay,bx,by] = analyze_triangle(x1,y1,x2,y2,x3,y3);
        elseif max(distances) == d2
            [ax,ay,bx,by] = analyze_triangle(x1,y1,x3,y3,x2,y2);
        elseif max(distances) == d3
            [ax,ay,bx,by] = analyze_triangle(x1,y1,x4,y4,x2,y2);
        elseif max(distances) == d4
            [ax,ay,bx,by] = analyze_triangle(x2,y2,x3,y3,x1,y1);
        elseif max(distances) == d5
            [ax,ay,bx,by] = analyze_triangle(x2,y2,x4,y4,x1,y1);
        elseif max(distances) == d6
            [ax,ay,bx,by] = analyze_triangle(x3,y3,x4,y4,x1,y1);
        end
    else
        temp = num2cell(A);
        [x1, x2, x3, y1, y2, y3] = temp{:};
        d1 = distance(x1,y1,x2,y2);
        d2 = distance(x1,y1,x3,y3);
        d3 = distance(x2,y2,x3,y3);
        distances = [d1,d2,d3];
        if max(distances) == d1
            [ax,ay,bx,by] = analyze_triangle(x1,y1,x2,y2,x3,y3);
        elseif max(distances) == d2
            [ax,ay,bx,by] = analyze_triangle(x1,y1,x3,y3,x2,y2);
        elseif max(distances) == d3
            [ax,ay,bx,by] = analyze_triangle(x2,y2,x3,y3,x1,y1);
        end
    end
end