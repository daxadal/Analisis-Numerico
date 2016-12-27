function f= funcbelza(t,x, par)
%Ecuaci�n de Belousov-Zhabotinsky
%Par�metros
alfa=par(1); beta=par(2); gamma=par(3); delta=par(4);
%Funcion
f=[alfa*( x(2)-x(1)*x(2)+x(1)-beta*x(1)*x(1) );
   ( gamma*x(3)-x(2)-x(1)*x(2) )/alfa;
   delta*( x(1)-x(3) ) ];
end