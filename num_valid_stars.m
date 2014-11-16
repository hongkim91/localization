function n = num_valid_stars(A)
n = 0;
for i = 1:4
    if A(i) ~= 1023
        n = n + 1;
    end
end
end