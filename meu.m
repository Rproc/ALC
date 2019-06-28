A = [1, 1, 1 ; 1, 2, 2; 1, 2, 3];
C = [0,0,0;0,0,0;0,0,0];
chol (A)

n =3;

for i=1 : n
    for k=1 : i-1
        A(i,i) = A(i,i) - (A(k,i)^2);
    end
    if A(i,i) <= 0
        exit;
    end
    A(i,i) = sqrt (A(i,i));
    
    for j=i+1 : n 
        for k=1 : i-1
            A(i,j) = A(i,j) - (A(k,i) * A(k,j) );
        end
        A(i,j) = A(i,j) / A(i,i);
    end
end
A;
triu (A)