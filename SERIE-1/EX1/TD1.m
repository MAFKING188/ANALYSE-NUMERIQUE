function moyenne = Calculer_Moyenne(N)

somme = 0;

for i = 1:N
    X = input("Donnez une valeur: ");
    somme = somme + X ; 
end
moyenne = somme/N;
fprintf("La moyenne est: %.2f",moyenne)
end

%% CALCULER LA MOYENNE

N = input("Donnez la valuer de N: ");
Calculer_Moyenne(N)
%% CALCULER LA NORME1 D'NU VECREUR X
function norme = norme_1(N)

somme =0;
for i = 1:N
    X = input("Donnez une valeur de X: ");
    somme = somme + X;    
end
norme = somme
fprintf("La norme 1 d'un vecteur X est %.2f",norme)
end
%% CALCULER LA NORME1 D'NU VECREUR X

N = input(["Donnez la valuer de N: "]);
norme_1(N)
%% CALCULER LA NORME2 D'NU VECREUR X
function norme = norme_2(N)

somme = 0;
for i = 1:N
    X = input(["Donnez  valeur de X: "]);
    somme = somme + X^2;    
end
norme = sqrt(somme);
fprintf("La norme 2 d'un vecteur X est %.2f",norme)
end

%% CALCULER LA NORME2 D'NU VECREUR X

N = input(["Donnez la valuer de N: "]);
norme_2(N)
%% CALCULER PRODUIT SCALAIRE DE DEUX VECTEURS X ET Y

function produit = Produit_X_Y(N)
somme=zeros(1:N);
for i = 1:N
    fprintf("Donnez %d valeur de X",i);
    X = input();
    fprintf("Donnez %d valeur de Y",i);
    Y = input();
    
end
produit = somme
fprintf("La resulter est:");
disp(produit)
end
%% VERIFICATION
N = input(["Donnez la valuer de N: "]);
Produit_X_Y(N)
