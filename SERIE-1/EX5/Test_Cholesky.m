%TEST Cholesky

A = [4 2 -2;
     2 2 0; 
    -2 0 5];
N = 3;
L = Cholesky(A,N);
disp("La matrice L est: ");
disp(L);

TL = L*L';
disp("La matrice transpose de L est :");
disp(TL);
