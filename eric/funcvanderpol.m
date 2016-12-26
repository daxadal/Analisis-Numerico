function f= funcvanderpol(t,x)
%Ecuación de Van der Pol
%Parámetros
alfa= 1; beta= 1;
%Funcion
f=[x(2);
   -alfa*(x(1)*x(1)-beta)*x(2)-x(1)];
end

