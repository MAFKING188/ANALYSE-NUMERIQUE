function X = Methode_GaussSeidel()

N = input("Donnez la valeur de N: ");

A = zeros(N,N);
b = zeros(N,1);
X = zeros(N,1);

e = input("Donnez la tolerance: ");

for i = 1:N
    for j = 1:N
         A(i,j) = input(sprintf("Donnez la valeur de A(%d,%d): ", i, j));
    end
end

for j = 1:N
    b(j) = input(sprintf("Donnez la valeur de b(%d): ", j));
end

for j = 1:N
    X(j) = input(sprintf("Donnez la valeur de X(%d) pour la premiere approximation: ", j));
end

% Matrix splitting for Gauss-Seidel
D = diag(diag(A));
L = tril(A, -1);   % strict lower triangular
U = triu(A, 1);    % strict upper triangular

% Gauss-Seidel system: (D - L) * X_new = b - U * X_old
M = D - L;

k = 1;
maxIter = 1000;

while true

    % Gauss-Seidel update
    Y = M \ (b - U * X);

    % Compute residual
    res = norm(b - A * Y, inf);

    if res < e || k > maxIter
        break
    end

    X = Y;
    k = k + 1;
end

fprintf("Gauss-Seidel terminé en %d iterations\n", k);
X
end
