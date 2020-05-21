function Runga_Kutta_Nystrom

h = .001;
x0 = pi;
y0 = (1/pi);
y0_d = (-2/(pi^2));
finish_x = 7*pi/2;
N = ceil(finish_x - x0)/h;
fprintf(1,'@ x =  %1.2f ',x0)
fprintf(1,'  f(x,y) is:  %2.7f \n',y0)

for count = 1:1:N
    
A1 = func(x0,y0,y0_d);
x0A2 = x0 + (h/2);
y0A2 = y0 + ((h/2) * (y0_d + ((h/4) * A1)));
y0_dA2= y0_d + ((h/2) * A1);
A2 = func(x0A2,y0A2,y0_dA2);
y0_dA3= y0_d + ((h/2) * A2);
A3 = func(x0A2,y0A2,y0_dA3);
x0A4 = x0 + h;
y0A4 = h * (y0_d + (h/2) * A3);
y0_dA4 = y0_d + (h* A3);
A4 = func(x0A4,y0A4,y0_dA4);

y1 = y0 + h * (y0_d + ((1/6)*(A1 + A2 + A3)));
y1_d = y0_d + ((h/6)* (A1 + (2*A2) + (2*A3) + A4));
y0_d = y1_d;
y0 = y1;
x0 = x0 + h;

fprintf(1,'@ x =  %1.2f ',x0)
fprintf(1,'  f(x,y) is:  %2.7f \n',y0)
plot(y0,x0)
hold on
end

fprintf(1,'the f(%1.2f',x0)
fprintf(1,')is:  %1.14f \n',y0)