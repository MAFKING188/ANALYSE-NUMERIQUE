%% CALCULER PRODUIT SCALAIRE DE DEUX VECTEURS X ET Y

function produit = TDProduit_X_Y(N)
somme=0;
X = zeros(1,N);
Y = zeros(1,N);

for i = 1:N
   X(i) = input(sprintf("Donnez valeur de X%d ",i));

   Y(i) = input(sprintf("Donnez valeur de Y%d ",i));   
end

for i = 1:N
    somme=somme + (X(i)*Y(i));
produit = somme;
fprintf("La resulter est:");
disp(produit)
end
end
%% VERIFICATION
N = input("Donnez la valuer de N: ");
TDProduit_X_Y(N)
