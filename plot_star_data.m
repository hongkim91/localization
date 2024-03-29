function plot_star_data(A)
X = A(1:4)
Y = A(5:8)

xlim([0 1028]);
ylim([0 768]);

hold on;

% four stars
scatter(X,Y, 'o');

% actual position
[x,y] = determine_position(A);
scatter(x,y, 'o');

% center point
% scatter(520, 367.5, '+');

% axies and center line
plot([0,0], [0,768]);
plot([0,0], [1028,0]);
plot([512,512], [0,768], ':r');
plot([0,1028], [384,384], ':r');
set(gca, 'XDir', 'reverse');
set(gca, 'YDir', 'reverse');

hold off;
end