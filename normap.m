X = [ 2, 4];
n = 2;
p = 3;
result = 0;

for i=1 : n
    result = result + ( X(i) ^ p );
end

norm(X, p)
nthroot (result, p)
