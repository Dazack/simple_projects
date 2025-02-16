function Euler_second_derivitive

h = .1;
x0 = pi;
y0 = (1/pi);
y0_d = -2/(pi^2);
finish_x = 5*pi/2;
N = ceil(finish_x - x0)/h;


for count = 1:1:(N-1)
    
y0_2d = func(x0,y0,y0_d);
y1 = y0 + h*(y0_d) + (((h^2)/2)*y0_2d);
y1_d = y0_d + (h*y0_2d);
y0_d = y1_d;
y0 = y1;
x0 = x0 + h;

fprintf(1,'@ x =  %1.2f ',x0/pi)
fprintf(1,'pi  f(x,y) is:  %2.7f pi',y0/pi)
fprintf(1,'  (or :  %2.7f )\n',y0)
plot(y0,x0,'k')
hold on
end

fprintf(1,'the f(%1.2f',(x0/pi))
fprintf(1,')pi is:  %1.4f pi\n',(y0/pi))
fprintf(1,'  (or :  %2.7f )\n',y0)