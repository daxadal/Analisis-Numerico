function f= funcbelza(t,x)
%Ecuación de Belousov-Zhabotinsky
%Parámetros
alfa=2e4; beta=8e-4; gamma=5e3; delta=0.75;
%Funcion
f=[alfa*( x(2)-x(1)*x(2)+x(1)-beta*x(1)*x(1) );
   ( gamma*x(3)-x(2)-x(1)*x(2) )/alfa;
   delta*( x(1)-x(3) ) ];
end