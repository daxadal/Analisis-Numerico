function f=fundisplin1(t,x,par)
%Funcion NO homog�nea de disparo lineal
%Par�metros funcion
p=par(1); q=par(2); r=par(3);
%Funcion
f=[x(2);
   p(t)*x(2)+q(t)*x(1)+r(t)];
end