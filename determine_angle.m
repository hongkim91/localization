function theta = determine_angle(ax,ay,bx,by)
    v1 = [ax-bx, ay-by];
    v2 = [0, -1];
    t = acos(dot(v1,v2)/(norm(v1)*norm(v2)));
    if ax > bx
        theta = -t;
    else
        theta = t;
    end
    % fprintf('angle: %f\n', theta*180/pi)
end
