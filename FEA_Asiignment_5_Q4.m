figure();
plot(Q4a.x,Q4a.Deflection,'r-o');
ylabel("Deflection");
hold on;
plot(Q4b.x,Q4b.Deflection,'g-*');
legend('4 Element','8 Element');
hold off;

figure();
plot(Q4a.x,Q4a.Moment,'r-o');
ylabel("Moment");
hold on;
plot(Q4b.x,Q4b.Moment,'g-*');
legend('4 Element','8 Element');
hold off;

figure();
plot(Q4a.x,Q4a.ShearForce,'r-o');
ylabel("Shear Force");
hold on;
plot(Q4b.x,Q4b.ShearForce,'g-*');
legend('4 Element','8 Element');
hold off;