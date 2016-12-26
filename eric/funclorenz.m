function f= funclorenz(t,x)
%Sistemas de Lorenz
%Parámetros
sigma=10; beta=8/3; ro=110;
%Funcion
f=[sigma*(x(2)-x(1));
   ro*x(1)-x(2)-x(1)*x(3);
   x(1)*x(2)-beta*x(3)];
end