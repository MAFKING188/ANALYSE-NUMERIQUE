function X = Methode_Jacobie()

N = input("Donnez la valeur de N: ");

A = zeros(N,N);
b = zeros(N,1);
X = zeros(N,1);

e = input("Donnez la tolerance: ");

for i = 1:N
    for j = 1:N
         A(i,j) = input(sprintf("Donnez la valeur de A(%d,%d): ",i,j));
    end
end

for j = 1:N
    b(j) = input(sprintf("Donnez la valeur de b(%d): ",j));
end

for j = 1:N
    X(j) = input(sprintf("Donnez la valeur de X(%d) pour la premiere approximation: ",j));
end

% Extract diagonal and remainder
D = diag(diag(A));          % diagonal matrix
R = A - D;                  % rest of matrix

k = 1;
maxIter = 1000;

while true
    Y = D \ (b - R*X);      % Jacobi update

    % Compute residual
    res = norm(b - A*Y, inf);

    if res < e || k > maxIter
        break
    end
    
    X = Y;
    k = k+1;
end

fprintf("Jacobi terminé en %d iterations\n", k);
X
end
