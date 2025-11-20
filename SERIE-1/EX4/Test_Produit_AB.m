% TEST PRODUIT A ET B

% TESTE AFFECTATION A ET B
N = input(sprintf("Donnez la valeur de N"));
[A,B] = AffectationAB(N);
[C] = ProduitAB(A,B,N);

disp("LA produit de A et B par la fonction est: ");
disp(C);
disp("LA produit de A et B par la fonction matlab est: ");
A*B