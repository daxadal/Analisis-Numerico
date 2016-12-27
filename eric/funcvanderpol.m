function f= funcvanderpol(t,x,par)
%Ecuaci�n de Van der Pol
%Par�metros
alfa= par(1); beta= par(2);
%Funcion
f=[x(2);
   -alfa*(x(1)*x(1)-beta)*x(2)-x(1)];
end

