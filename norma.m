X = [ 4, 3];
n = 2;
result = 0;

for i=1 : n
    result = result + ( X(i) * X(i) );
end

norm(X)
sqrt (result)