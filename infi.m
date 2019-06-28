X = [10, 50, 85, 5, 95];

n = 5;

max = 0;

for i=2 : n
    max = X(1);
    
    if X(i) > max
        max = X(i);
    end
end

norm (X, inf)

max

