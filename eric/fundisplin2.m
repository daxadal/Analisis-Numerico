function f=fundisplin2(t,x,pqr)
%Funcion homog�nea de disparo lineal

f=[x(2);
   feval(pqr{1},t)*x(2)+feval(pqr{2},t)*x(1)];
end