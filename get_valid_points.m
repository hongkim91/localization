function B = get_valid_points(A)
n = 1;
B = [];
for i = 1:8
    if A(i) ~= 1023
        B(n) = A(i);
        n = n+1;
    end
end
end