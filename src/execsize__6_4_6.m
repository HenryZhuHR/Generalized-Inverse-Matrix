clear all;clc;

%% A
A = [
    1, 0, 0, 1;
    1, 1, 0, 0;
    0, 1, 1, 0;
    0, 0, 1, 1
    ];
disp("Matrix A:")
disp(A)

%% compute Generalized Inverse Matrix
B=pinv(A);
disp("Generalized Inverse Matrix of Matrix A:")
disp(B)

disp("Penrose condition 1:")
disp("(1) AXA=A")
disp(A*B*A)
disp(A)

disp("Penrose condition 2:")
disp("(2) XAX=X")
disp(B*A*B)
disp(B)

disp("Penrose condition 3:")
disp("(3) (AX)^H=AX")
disp((A*B)')
disp(A*B)

disp("Penrose condition 4:")
disp("(4) (XA)^H=XA")
disp((B*A)')
disp(B*A)

%% (1) b=[1;1;1;1];
disp("=================================")
b=[1;1;1;1];
disp("for b=")
disp(b)

x_0=B*b;
disp("x_0=")
disp(x_0)
disp("compute A*x_0=")
disp(A*x_0)
disp("compute A*A^+*b=")
disp(A*B*b)
disp("A*A^+*b = A*x_0 = b, so Ax=b is a consistent linear system, so x_0 = ")
disp(x_0)
disp("\min\limits_x ||x||")
disp(norm(x_0))

disp("compute A^+*b=")
disp(B*b)
disp("compute I-A^+*A=")
disp(eye(4)-B*A)


%% (2) b=[1;0;1;0];
disp("=================================")
b=[1;0;1;0];
disp("for b=")
disp(b)

x_0=B*b;
disp("x_0=")
disp(x_0)
disp("compute A*x_0=")
disp(A*x_0)
disp("compute A*A^+*b=")
disp(A*B*b)
disp("A*A^+*b = A*x_0 = b, so Ax=b is a consistent linear system, so x_0 = ")
disp(x_0)

disp("\min\limits_x ||Ax-b||")
disp(norm(A*x_0-b))