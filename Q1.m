x = [492, 473, 567, 513];
y = [330, 368, 367, 402];

xlim([0 1028]);
ylim([0 768]);

hold on;

%hey weof

% four stars
scatter(x,y, 'o');
a
% center point
scatter(520, 367.5, '+');

% axies and center line
plot([0,0], [0,768]);
plot([0,1028], [0,0]);
plot([512,512], [0,768], ':r');
plot([0,1028], [384,384], ':r');
set(gca, 'XDir', 'reverse');
set(gca, 'YDir', 'reverse');

hold off;
