function [ax,ay,bx,by] = analyze_triangle(x1,y1,x2,y2,x3,y3)
    d1 = distance(x1,y1,x2,y2);
    d2 = distance(x2,y2,x3,y3);
    ratio = d2/d1;

    % The four ratios d2/d1 can have:
    % 16/29     20/29     13/29     26/29
    % 0.5517    0.6897    0.4483    0.8966

    % fprintf('ratio: %f', ratio);

    if ratio > 0.4 && ratio <= 0.5
        ax = x2;
        ay = y2;
        bx = x1;
        by = y1;
    elseif ratio > 0.5 && ratio <= 0.6
        ax = x2;
        ay = y2;
        bx = x1;
        by = y1;
    elseif ratio > 0.64 && ratio <= 0.74
        ax = x1;
        ay = y1;
        bx = x2;
        by = y2;
    elseif ratio > 0.85 && ratio <= 0.95
        ax = x1;
        ay = y1;
        bx = x2;
        by = y2;
    else
        ax = -1;
        ay = -1;
        bx = -1;
        by = -1;
        % error('triangle analysis failed to classify');
    end
end

