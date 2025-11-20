function [VectX, MatA] = Affectation(N)
%% AFFECTATION DE X ET A
if N >= 3
    % Vecteur X
    VectX = zeros(N,1);
    for i = 1:N
        VectX(i) = 1/(1+i);
    end

    % Matrice A
    MatA = zeros(N,N);
    for i = 1:N
        for j = 1:N
            MatA(i,j) = 2/(i + j^2);
        end
    end
else
    error('N doit être supérieur ou égal à 3');
end

% Affichage des résultats
disp('VECTEUR X = ');
disp(VectX);
disp('MATRICE A = ');
disp(MatA);
end
