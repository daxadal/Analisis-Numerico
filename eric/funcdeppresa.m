function f=funcdeppresa(t,x)
%Sistemas depredador presa
%Parámetros
%a=1; b=1; c=1; d=2;
a=3; b=0.2; c=0.6; d=5;
%Funcion
f=[a*x(1)-b*x(1)*x(2);
   -c*x(2)+d*x(1)*x(2)];
end