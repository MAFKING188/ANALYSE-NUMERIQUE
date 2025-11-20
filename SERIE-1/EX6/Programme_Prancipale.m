% PROGRAM PRANCIPALE

N = input("Donnez la valuer de N");

A = zeros(N,N);

for i = 1:N
    for j = 1:N
         A(i,j) = input(sprintf("Donnez la valeur de A%d%d: ",i,j));
    end
end

%A == A';
if issymmetric(A)                                                                              
    disp("A est symetrique");
else
    disp("A n'est pas sysmetrique");
end

disp(A);

L = Cholesky(A,N);
disp(L);
b = zeros(N,1);
for j = 1:N
    b(j) = input(sprintf("Donnez la valeur de b%d: ",j));
end

Y = ResultMatTriaInf(L,b,N);

Tl = L';

X = ResultMatTriaSup(Tl,Y,N);

% VERIFICATION
V = norm(A*X - b);
disp("La norme de A*X - b est: ")
disp(V);