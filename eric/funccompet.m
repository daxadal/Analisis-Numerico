function f=funccompet(t,x,par)
%Sistemas de competicion
%Par�metros
a=par(1); b=par(2); c=par(3); d=par(4); e=par(5); f=par(6);
%Funcion
f=[a*x(1)-b*x(1)*x(2)-e*x(1)*x(1) ;
   -c*x(2)+d*x(1)*x(2)-f*x(2)*x(2)];
end