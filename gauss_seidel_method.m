% Gauss-Seidel method to solve a system of linear equations

% test input

A=[3,1,1;1,3,-1;3,1,-5];
b=[5;3;-1];
x0=[0;0;0];

[x,r,e]=GaussSeidel(A,b,x0,10);
x
r
e



function [x,r,e] = GaussSeidel(A,b,x0,n)
Qinv = tril(A)^-1;
B=eye(size(A,1))-Qinv*A;
x=B*x0 +Qinv*b;
for i = 2:n
    x= B*x + Qinv*b;
end
r=x-A^-1*b;
e=A*x-b;
end