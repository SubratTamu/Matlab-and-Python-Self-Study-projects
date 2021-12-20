x = [0 0 0 0];
y =[0:3.75:120]';

for i = 1:length(y)
    p = y(i,:)
    x(i,1)=p;
    x(i,2)= Deflection(p);
    x(i,3)= Moment(p);
    x(i,4)= ShearForce(p);
end
figure();
plot(Q4a.x,Q4a.Deflection,'r-o');
xlabel('Half Beam');
ylabel("Deflection");
hold on;
plot(Q4b.x,Q4b.Deflection,'g-*');
plot(y(:,:),x(:,2),'b-+');
legend('4 Element','8 Element','Exact');
hold off;

figure();
plot(Q4a.x,Q4a.Moment,'r-o');
xlabel('Half Beam');
ylabel("Moment");
hold on;
plot(Q4b.x,Q4b.Moment,'g-*');
plot(y(:,:),x(:,3),'b-+');
legend('4 Element','8 Element','Exact');
hold off;

figure();
plot(Q4a.x,Q4a.ShearForce,'r-o');
xlabel('Half Beam');
ylabel("Shear Force");
hold on;
plot(Q4b.x,Q4b.ShearForce,'g-*');
plot(y(:,:),x(:,4),'b-+');
legend('4 Element','8 Element','Exact');
hold off;

function Dfl = Deflection(x)
    Ra = 4200 - (3315.3/2);
    Dfl = (1/(415*1.5*10^6))*(Ra-420*x);
end
function Bm = Moment(x)
    Ra = 4200 - (3315.3/2);
    Bm = Ra*x-(420/12)*x*x/2;
end
function Sf = ShearForce(x)
    Ra = 4200 - (3315.3/2);
    Sf = Ra-420*x;
end
