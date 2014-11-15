data_length = length(rawStarData);
x = zeros(1, data_length);
y = zeros(1, data_length);

for i = 1:data_length
    [mx, my] = determine_position(rawStarData(i,:));
    x(i) = 1024-mx;
    y(i) = 768-my;
end

xlim([0 1028]);
ylim([0 768]);

hold on;

scatter(x,y);
plot([0,0], [0,768]);
plot([0,0], [1028,0]);

hold off;
