function f= funcduffing(t,x,par)
%Ecuaci�n de Duffing
%Par�metros
alfa= par;
%Funcion
f=[x(2);
   -alfa*x(2)-x(1)^3+x(1)];
end