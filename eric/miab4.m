function [t,u] = miab4(t0,tfin,N,x0,f,par)
%M�todo de Adams-Bashforth de 4 pasos
%Inicalizaci�n del paso y las variables de salida
h=(tfin-t0)/N;
t=t0:h:tfin;
dim=size(x0,1);
u=zeros(dim,N+1);

%Inicializaci�n de vector auxiliar de evaluaciones de f
fv=zeros(dim,N+1);

%Inicalizaci�n m�todo Adams-Bashforth de orden 4 con RK cl�sico
[t_dummy, u_init] = mirk4(t0,t0+3*h,3,x0,f,par);

%Inicializacion de los datos iniciales y evaluaciones auxiliares
u(:,1:4)=u_init;
fv(:,1)=f(t(1),u(:,1),par);
fv(:,2)=f(t(2),u(:,2),par);
fv(:,3)=f(t(3),u(:,3),par);
%Algoritmo
for n=4:N
    fv(:,n)=f(t(n),u(:,n),par);
    %C�lculo auxiliar de la combinaci�n lineal de evaluaciones de f
    clf=55*fv(:,n)-59*fv(:,n-1)+37*fv(:,n-2)-9*fv(:,n-3);
    u(:,n+1)=u(:,n)+clf*h/24;
end
end