A= [1,2; 4, 0];
n=2;

for i=1 : n
    L(i,1) = A(i,1);
    for j=1 : n
        U (1,j) = A (1,j)/L(1,1);
    end
end

for j=2 : n
    for i=j : n
        soma =0;
        for k=1 : j-1
            soma = soma + L(i,k) * U(k,j);
        end
        L(i,j) = A(i,j) - soma;
    end
    U(j,j) = 1;
    for i = j+1 : n
        soma = 0;
        for k=1 : j-1
            soma = soma + L(j,k) * U (k,i);
        end
        U(j,i) = (A(j,i) - soma) / L(j,j);
    end
end
A;
U
L
