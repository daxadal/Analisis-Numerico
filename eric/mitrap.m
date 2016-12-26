function [t,u,numfun] = mitrap(t0,tfin,N,x0,f,jac,itmax)
%M�todo del trapecio con el m�todo de Newton
%Inicalizaci�n de variables
h=(tfin-t0)/N;
t=t0:h:tfin;
dim=size(x0,1);
u=zeros(dim,N+1);
numfun=0;

%Algoritmo
u(:,1)=x0;
for n=1:N
    cte_n=u(:,n)+h/2*f(t(n),u(:,n));
    z=u(:,n);
    numit=0;
    while and(norm(z,inf)>=h^3, numit < itmax)
        Gz=z-cte_n-h/2*f(t(n+1),z);
        DGz=eye(dim)-h/2*jac(t(n+1),z);
        w=DGz\Gz;
        z=z-w;
        numit=numit+1;
    end
    u(:,n+1)=z;
end
end