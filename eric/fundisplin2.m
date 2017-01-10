function f=fundisplin2(t,x,par)
%Funcion homogénea de disparo lineal
%Parámetros
p=par(1); q=par(2);
%Funcion
f=[x(2);
   p(t)*x(2)+q(t)*x(1)];
end