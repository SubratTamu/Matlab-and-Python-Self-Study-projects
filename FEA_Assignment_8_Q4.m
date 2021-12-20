figure()
plot(As8Q44QG2.Vx,As8Q44QG2.y,'k-o');
hold on;
scatter(As8Q44QG8.Vx,As8Q44QG8.y,'^');
scatter(As8Q48LG2.Vx,As8Q48LG2.y,'d');
scatter(As8Q48LG8.Vx,As8Q48LG8.y,'s');
xlabel("Horizontal Velocity Vx(0.5,y)");
ylabel("Displacement y");
legend("4Q9,Gamma=10^2","4Q9,Gamma=10^8","8Q4,Gamma=10^2","8Q4,Gamma=10^8");
hold off;
figure()
plot(As8Q44QG2P.x,As8Q44QG2P.P,'k-o');
hold on;
scatter(As8Q44QG8P.x,As8Q44QG8P.P,'^');
scatter(As8Q48LG2P.x,As8Q48LG2P.P,'d');
scatter(As8Q48LG8P.x,As8Q48LG8P.P,'s');
xlabel("Horizontal Distance x");
ylabel("Pressure P");
legend("4Q9,Gamma=10^2","4Q9,Gamma=10^8","8Q4,Gamma=10^2","8Q4,Gamma=10^8");
hold off;

