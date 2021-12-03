clear all;
clc;
%% 6.4 - 6.
A = [
    1, 0, 0, 1;
    1, 1, 0, 0;
    0, 1, 1, 0;
    0, 0, 1, 1
    ];
A_inverse=pinv(A);

disp("Matrix A:")
disp(A)
disp("Generalized Inverse Matrix of Matrix A:")
disp(A_inverse)


%% (1) b=[1;1;1;1];
disp("=================================")
b=[1;1;1;1];
x_0=A_inverse*b;
disp("for b=")
disp(b)
disp("compute A*A^+*b=")
disp(A*A_inverse*b)
disp("compute A*x_0=")
disp(A*x_0)

disp("A*A^+*b = A*x_0 = b, so Ax=b is a consistent linear system, so x_0 = ")
disp(x_0)

%% (2) b=[1;0;1;0];
disp("=================================")
b=[1;0;1;0];
x_0=A_inverse*b;
disp("for b=")
disp(b)
disp("compute A*A^+*b=")
disp(A*A_inverse*b)
disp("compute A*x_0=")
disp(A*x_0)

disp("A*A^+*b = A*x_0 \neq b, so Ax=b is an inconsistent linear system, so x_0 = ")
disp(x_0)
