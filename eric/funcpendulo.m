function f=funcpendulo(t,x,par)
%Ecuaci�n del p�ndulo
%Par�metros
M=par(1); l=par(2); g=par(3); beta=par(4);
%Funcion
f=[x(2);
   M-2*beta*x(2)-g/l*sin(x(1))];
end