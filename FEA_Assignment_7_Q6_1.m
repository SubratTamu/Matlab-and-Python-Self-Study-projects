x = (Q6a.t)*0.01;
plot(x,Q6a.u,"r-+");
hold on;
plot((Q6ai.t)*0.005,Q6ai.u,"b-o");
plot((Q6aii.t)*0.01,Q6aii.u,"g-*");
xlabel("Time,t");
ylabel("Temperature(0,0,t)");
legend("Alpha=0.5,DT=0.01","Alpha=0.0,DT=0.005","Alpha=0.0,DT=0.01");
hold off;
figure(2)
plot(Q6bt0.x,Q6bt0.u,"b-o");
hold on;
plot(Q6bt1.x,Q6bt1.u,"g-o");
plot(Q6bt2.x,Q6bt2.u,"k-o");
plot(Q6bt3.x,Q6bt3.u,"r-o");
plot(Q6bt4.x,Q6bt4.u,"c-o");
xlabel("Distance,x");
ylabel("Temperature(x,0,t-fixed)");
legend("t=0.005","t=0.1","t=0.2","t=0.5","t=1.0");
hold off;
figure(3)
plot((Q6c.t)*0.1,Q6c.u,"-o");
xlabel("Time,t");
ylabel("Temperature(0,0,t)");
legend("Alpha=0.5,DT=0.005");