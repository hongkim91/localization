function print_distribution(rawStarData)
four = 0;
three = 0;
two = 0;
one = 0;
zero = 0;

for i = 1:length(rawStarData)
    n = num_valid_stars(rawStarData(i,:));

    if n == 4
        four = four+1;
    elseif n == 3
        three = three+1;
    elseif n == 2
        two = two +1;
    elseif n == 1
        one = one +1;
    elseif n == 0
        zero = zero +1;
    else
        fprintf('WAt!\n');
    end
end
fprintf('four: %d, three:%d, two:%d, one:%d, zero:%d\n', four, three, two, one, zero);
end
