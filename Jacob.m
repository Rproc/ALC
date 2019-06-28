% Jacobi

clc
B = [7, 3; 4, 2];
A = [3, 1; 1, 4];


TOL=10^(-6);
for n=1:2
    x =[0; 0];
    
    for i = 1 :1000
        x (1, i+1) = ( B(1, n)- A(1, 2) * x(2, i) ) / A(1, 1);
        x (2, i+1) = ( B(2, n)- A(2, 1) * x(1, i) ) / A(2, 2);
        
        if norm( x(:, i+1)- x(:, i) ) < TOL
            break;
        end
    end
    Count (n) = i;
    Solution (:, n) = x(:, i);
end

Solution

Count
