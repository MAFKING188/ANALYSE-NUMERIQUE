% TEST L*X = b
%AFFECTATION DE A ET b
N = input(sprintf("Donnez la valeur de N"));
[A,b] = Affectation_Ab(N);
disp("La matice A est: ");
disp(A);

disp("La matice B est: ");
disp(b);

[XInf] = ResultMatTriaInf(A,b,N);
disp("Resulter avec L inf est:")
disp(XInf);

[XSup] = ResultMatTriaInf(A,b,N);
disp("Resulter avec L sup est:")
disp(XSup);