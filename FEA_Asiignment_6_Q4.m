Ulamb1 = [0 2.46551 1.33576 -0.700346 -1.89681];
Ulamb2 = [0 2.33283 -1.32339 -1.55352 2.42283];
Ulamb3 = [0 2.41492 1.31607 -0.649792 -1.78162];
Ulamb4 = [0 2.03971 -1.40098 -1.08369 2.61233];
i = 1;j =1; k =1; l=1;  m =1; n=1;p=1; y1 =[0]; y2 = [0];y3 =[0];y4 =[0]; y11=[0]; y22=[0]; y33= [0];y44 = [0];
yq1= [0];yq2 = [0];yq11 = [0];yq22= [0];x =[0:0.01:1];x3=[0];x4=[0];x5=[0];
for i1 = 0:0.01:0.25
    y1(i,:) = Mode_shape_linear(i1,0.25,Ulamb1(1,1),Ulamb1(1,2));
    y11(i,:)= Mode_shape_linear(i1,0.25,Ulamb2(1,1),Ulamb2(1,2));
    i =i+1;    
end
for i7 = 0:0.01:1
    x3(p,:) =sin(3.1105*i7);
    x4(p,:)=sin(6.2211*i7),
    x5(p,:) = sin(9.3317*i7);
    p =p+1
end

for i2 = 0.25:0.01:0.5
    y2(j,:) = Mode_shape_linear(i2,0.25,Ulamb1(1,2),Ulamb1(1,3));
    y22(j,:) = Mode_shape_linear(i2,0.25,Ulamb2(1,2),Ulamb2(1,3)); 
    j = j+1;
end

for i3 = 0.5:0.01:0.75
    y3(k,:) = Mode_shape_linear(i3,0.25,Ulamb1(1,3),Ulamb1(1,4));
    y33(k,:) = Mode_shape_linear(i3,0.25,Ulamb2(1,3),Ulamb2(1,4));
    k =k+1;
end

for i4 = 0.75:0.01:1
    y4(l,:) = Mode_shape_linear(i4,0.25,Ulamb1(1,4),Ulamb1(1,4));
    y44(l,:) = Mode_shape_linear(i4,0.25,Ulamb2(1,3),Ulamb2(1,4));
    l = l+1;
end
    
for i5 = 0:0.01:0.5
    yq1(m,:) = Mode_shape_quadratic(i5,0.5,Ulamb3(1,1),Ulamb3(1,2),Ulamb3(1,3));
    yq11(m,:) = Mode_shape_quadratic(i5,0.5,Ulamb4(1,1),Ulamb4(1,2),Ulamb4(1,3));
    m = m+1;
end

for i6 = 0.5:0.01:1
    yq2(n,:) = Mode_shape_quadratic(i6,0.5,Ulamb3(1,3),Ulamb3(1,4),Ulamb3(1,5));
    yq22(n,:) = Mode_shape_quadratic(i6,0.5,Ulamb4(1,3),Ulamb4(1,4),Ulamb4(1,5)); 
    n = n+1;
end 
x =[[0:0.01:0.25]';[0.25:0.01:0.5]';[0.5:0.01:0.75]';[0.75:0.01:1]'];
x1 =[[0:0.01:0.5]';[0.5:0.01:1]'];
yf1 = [y1(:,:);y2(:,:);y3(:,:);y4(:,:)];
yf11 = [y11(:,:);y22(:,:);y33(:,:);y44(:,:)];
yf2 = [yq1(:,:);yq2(:,:)];
yf22 = [yq11(:,:);yq22(:,:)];
    figure(1)
    plot(x,yf1(:,:),'r--o');
    hold on;
    plot(x1,yf2(:,:),'b--+');
    plot([0:0.01:1],x4,'k-');
    xlabel("Length");
    ylabel("Mode shape(Second Mode)");
    legend("4L Element","2Q Element","Exact");
    hold off;
    
    figure(2)
    plot(x,yf11(:,:),'g--o');
    hold on;
    plot(x1,yf22(:,:),'c--+');
    plot([0:0.01:1],x5,'k-');
    xlabel("Length");
    ylabel("Mode shape(Third Mode)");
    legend("4L Element","2Q Element","Exact");
    hold off;
    figure(3)
    plot([0:0.01:1],x3,'k-');
    xlabel("Length");
    ylabel("Mode shape(First Mode)");
    legend("Exact");



function Uh = Mode_shape_linear(x,h,u1,u2)
    psi1 = (1-(x/h));
    psi2 = (x/h);
    Uh = psi1*u1+psi2*u2;    
end
function Uh = Mode_shape_quadratic(x,h,u1,u2,u3)
    psi1 = (1-(x/h))*(1-((2*x)/h));
    psi2 = 4*(x/h)*(1-(x/h));
    psi3 = -(x/h)*(1-(2*x/h));
    Uh = psi1*u1+psi2*u2+psi3*u3;    
end