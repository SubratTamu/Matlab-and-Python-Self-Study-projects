a = 0.5;
u = [0,0];
j = 1;

for b = 0:0.125:1
    u(j,1) = b;
    u(j,2) = Exact(a,b);
    j = j+1;
end
plot(Q4a.y,Q4a.u,"r--o");
hold on;
plot(Q4b.y,Q4b.u,"b--+");
plot(u(:,1),u(:,2),"k-",'Linewidth',1);
xlabel("x =0.5,y on plate");
ylabel("u(0.5,y)");
legend("Triangular element"," Quadrilateral element","Exact");
hold off;
function f = Exact(x,y)
f = sin(pi*x)*sinh(pi*y)/sinh(pi);
end

