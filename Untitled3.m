A = [1, 2; 4, 0];
n=2;
L=eye(n);
for k=1:n
    if (A(k,k) == 0) 
        Error('Error'); 
    end
    L(k+1:n,k)=A(k+1:n,k)/A(k,k);
    for j=k+1:n
        A(j,:)=A(j,:)-L(j,k)*A(k,:);
    end
end
A
L
lu(A)