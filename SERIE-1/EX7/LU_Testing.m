% LU DEC TESTING

A = [ 6 18 3; 2 12 1; 4 16 3 ];
[L,U] = LU_Decomposition(A,3);

disp(L);
disp(U);