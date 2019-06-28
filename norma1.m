A = [1, -1, 4; 0, 0, -1; 1, 2, 1];
B = [0,0,0,0,0,0,0,0];
n = 3;
result = 0;
 

for j=1 : n
    for i=1: n
        if A(i,j) < 0
            A(i,j) = A(i,j) * (-1);
        end
     result = result + A(i,j);
    end
    B(i) = result;
    result = 0;
end
 
for i=2 : n
    max = B(1);
    
    if B(i) > max
        max = B(i);
    end
end
 
norm (A, 1)
max
