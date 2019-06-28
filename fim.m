A = [2,1,1; 2,2,-1;4,-1,6];
n=3;

for i=1 : n 
    for j=1 : n  %linha i de U
        soma = 0;
        for k=1 : i-1
            soma = soma + A(i,k) * A(k,j);
            A(i,j) = A(i,j) - soma;
        end
        for j=i+1 : n  %coluna j de L
            soma = 0;
            for k=1 : i-1
                soma = soma + A(j,k) * A(k,i);
                A(j,i) = (A(j,i) - soma)/A(i,i);
            end
        end
    end
end

%Trian. Infe. Ly= b
y(1) = b (1);
for k=2 : n
    soma = 0;
    for j=1 : k-1
        soma = soma + A(k,i) * y(j);
        y(k) = b(k) - soma;
    end
end
%Superior Ux = y
x(n) = y(n)/A(n,n);
for k=n-1 : 1
    soma = 0;
    for j=k+1 : n
        soma = soma + A(k,j)*x(j);
        x(k) = (y(k) - soma) / A(k,k);
    end
end

A
b
y
x




