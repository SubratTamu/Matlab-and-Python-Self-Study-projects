syms l kp;j =1;
kd = [0 0];ki =-450:1:451;

for kp = -2.1:0.1:0
    eq1 = l^2-(5+kp)*l-kp==0;
    s = solve(eq1);
    for i = -20:1:20
        kd(j,1) = 1/3*(-kp-3*(s(1,:))) +i;
        kd(j,2)= 1/3*(-kp-3*(s(2,:))) +i;
        j = j+1;
    end
end
plot(ki',kd(:,1),'r-');
hold on;
grid on;
plot(ki',kd(:,2),'b-');
hold off;
kp =-2.1:0.1:0;
plot(kp',ki',kd(:,1));
hold on;
grid on;
plot(kp',ki',kd(:,2));
hold off;
    
    