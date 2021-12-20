A =100;
E = 30*10^6;
h1 = 30*sqrt(2);
h2 = 40;
k1 = A*E/h1;
k2 = A*E/h2;
I =1000;
a = pi/4;
b =0;
p1 = 2*E*I;
Ke1 = p1*element_matrix(a,k1,h1);
Ke2 = p1*element_matrix(b,k2,h2);

function ke = element_matrix(m,k,h)
    p = 1/h^3;
    c = cos(m);
    s = sin(m);
    ke = p*[k*c^2+6*s^2 (k-6)*c*s 3*h*s -(k*c^2+6*s^2) -(k-6)*c*s 3*h*s;
      (k-6)*c*s k*c^2+6*s^2 -3*h*c -(k-6)*c*s -(k*c^2+6*s^2) -3*h*c;
      3*h*s -3*h*c 2*h^2 -3*h*s 3*h*c h^2;
      -(k*c^2+6*s^2) -(k-6)*c*s -3*h*s k*c^2+6*s^2 (k-6)*c*s -3*h*s;
      -(k-6)*c*s -(k*c^2+6*s^2) 3*h*c (k-6)*c*s k*c^2+6*s^2 3*h*c;
      3*h*s -3*h*c h^2 -3*h*s 3*h*c 2*h^2];
end


