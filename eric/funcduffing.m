function f= funcduffing(t,x)
%Ecuación de Duffing
%Parámetros
alfa= 0;
%Funcion
f=[x(2);
   -alfa*x(2)-x(1)^3+x(1)];
end