function [t,u] = midispnolin(pqr,t0,tfin,a,b,N,c1,c2)
%Método de disparo lineal
%pqr: funciones lineales

%Algoritmo
u(:,1)=x0;
for n=1:N
    
    s=u(:,n);
    numit=0;
    while and(norm(s,inf)>=h^3, numit < itmax)
        Gs=s-(-b);
        DGs=;
        w=DGs\Gs;
        s=s-w;
        numit=numit+1;
    end
    u(:,n+1)=z;
end
end

%Resolución del PVI no homogéneo
[t1, v1]=mirk4(t0,tfin,N,v01,fundisplin1,pqr);
%Resolución del PVI no homogéneo
[t2, v2]=mirk4(t0,tfin,N,v02,fundisplin2,pqr);

%Si v2(tfin)!=0, existe solución única
if v2(:,N+1) ~= 0
    u = v1 + (b-v1(:,N+1))/v2(:,N+1) * v2;
end