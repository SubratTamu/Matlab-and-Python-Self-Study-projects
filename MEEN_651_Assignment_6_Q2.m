
[kp,ki] = calc(100);
plot(ki(:,:),kp(:,:));

grid on;





function [kp, ki] = calc(w)
kp = [0];ki =[0];j=1;
 for i= 0:0.1:w
    kp(j,:) = -(-i^4+11*i^3+114*i^2-246*i^1+40)/(i^3+40*i^2-8*i^1+1);
    ki(j,:) = (-4*i^4+145*i^3+7*i^2+78*i^1)/(i^3+40*i^2-8*i^1+1);
    j = j+1;
 end
    
end