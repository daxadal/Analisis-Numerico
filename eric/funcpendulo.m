function f=funcpendulo(t,x)
%Ecuaci�n del p�ndulo
%Par�metros
M=0; l=1; g=9.8; beta=0;
%Funcion
f=[x(2);
   M-2*beta*x(2)-g/l*sin(x(1))];
end