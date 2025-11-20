function [L,U] = LU_Decomposition(A,N)

L = zeros(N,N);
U = zeros(N,N);
for i = 1:N
    % Initialize the sum for U matrix
    somme = 0;
    
    % Update the diagonal element of L (always 1 for Doolittle)
    L(i,i) = 1;
    
    % Update the U matrix (upper triangular)
    for j = i:N  % U only updates for j >= i
        somme = 0;
        for k = 1:i-1
            somme = somme + L(i,k) * U(k,j);
        end
        U(i,j) = A(i,j) - somme;
    end
    
    % Update the L matrix (lower triangular)
    for j = i+1:N  % L only updates for j > i
        somme = 0;
        for k = 1:i-1
            somme = somme + L(j,k) * U(k,i);
        end
        L(j,i) = (A(j,i) - somme) / U(i,i);  % Ensure correct division by U(i,i)
    end
end
end
