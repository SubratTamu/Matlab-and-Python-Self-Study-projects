
[kp,ki] = calc(1000);
plot(ki(:,:),kp(:,:));





function [kp, ki] = calc(w)
kp = [0];ki =[0];j =1;
 for i= -1000:1:w
    kp(j,:) = (-(4*i^2+6)/(1+i^2));
    ki(j,:) = i^2*(i^2-1)/(i^2+1);
    j = j+1
 end
    
end