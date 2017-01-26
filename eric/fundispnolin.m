function y=fundispnolin(t,x,par)
%Funcion de disparo NO lineal
%Parámetros funcion
f=par(1); fx=par(2); fy=par(3);
%Funcion
y=[x(2);
   f(t,x(1:2));
   x(4);
   fy(t,x(1:2))*x(1)+fx(t,x(1:2))*x(3)];
end