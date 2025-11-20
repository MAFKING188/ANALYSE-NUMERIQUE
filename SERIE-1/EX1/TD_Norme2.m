%% CALCULER LA NORME2 D'NU VECREUR X
function norme = norme_2(N)
    % CALCULER LA NORME 2 D'UN VECTEUR X
    X = zeros(1, N);
    somme = 0;
    
    % Lecture des valeurs de X
    for i = 1:N
        X(i) = input(sprintf("Donnez la valeur de X%d: ", i));
    end
    
    % Calcul de la norme 2
    somme = sum(X.^2);
    norme = sqrt(somme);
    
    % Affichage du résultat
    fprintf("La norme 2 d'un vecteur X est %.2f\n", norme);
end


%% %% CALCULER LA NORME2 D'NU VECREUR X

N = input(sprintf("Donnez la valuer de N: "));
norme_2(N)