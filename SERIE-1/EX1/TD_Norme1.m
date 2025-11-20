%% CALCULER LA NORME1 D'NU VECREUR X
function norme = norme_1(N)
X = zeros(1:N);
somme =0;
for i = 1:N
    X(i) = input(sprintf("Donnez X%d: ",i));   
end
for i = 1:N
    somme = somme + abs(X(i));    
end
norme = somme;
fprintf("La norme 1 d'un vecteur X est %.2f",norme)
end
 %% CALCULER LA NORME1 D'NU VECREUR X

N = input("Donnez la valuer de N: ");
norme_1(N)
