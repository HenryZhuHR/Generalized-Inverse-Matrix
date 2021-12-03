Matrix A:
     1     0     0     1
     1     1     0     0
     0     1     1     0
     0     0     1     1

Generalized Inverse Matrix of Matrix A:
    0.3750    0.3750   -0.1250   -0.1250
   -0.1250    0.3750    0.3750   -0.1250
   -0.1250   -0.1250    0.3750    0.3750
    0.3750   -0.1250   -0.1250    0.3750

=================================
for b=
     1
     1
     1
     1

compute A*A^+*b=
    1.0000
    1.0000
    1.0000
    1.0000

compute A*x_0=
    1.0000
    1.0000
    1.0000
    1.0000

A*A^+*b = A*x_0 = b, so Ax=b is a consistent linear system, so x_0 = 
    0.5000
    0.5000
    0.5000
    0.5000

=================================
for b=
     1
     0
     1
     0

compute A*A^+*b=
    0.5000
    0.5000
    0.5000
    0.5000

compute A*x_0=
    0.5000
    0.5000
    0.5000
    0.5000

A*A^+*b = A*x_0 \neq b, so Ax=b is an inconsistent linear system, so x_0 = 
    0.2500
    0.2500
    0.2500
    0.2500