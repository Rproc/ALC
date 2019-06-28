A = [1, -1, 4; 0, 0, -1; 1, 2, 1]

norm (A, 'fro')

n = 3;
result = 0;

for i=1 : n
    for j=1: n
        result = result + (A(i,j) ^ 2);
    end
end

sqrt (result)
