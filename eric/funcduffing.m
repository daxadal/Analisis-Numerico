function f= funcduffing(t,x)
%Ecuaci�n de Duffing
%Par�metros
alfa= 0;
%Funcion
f=[x(2);
   -alfa*x(2)-x(1)^3+x(1)];
end