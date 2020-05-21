function Runge_Kutta_constant_x

% approximatethe soultion to dy/dx = x*(y^.5)in the 
% range [2,3] where y(2) = 4. h = .1.

h = .1;
start_x = 1;
finish_x = 6;
start_y = 8;
N = ceil(finish_x - start_x)/h;

for coulter = 1:1:N
    
    
    A_1 = func(start_y);
    %start_x_1 = start_x + (h/2);
    start_y_1 = start_y + ((h/2)*A_1);
    A_2 = func(start_y_1);
    start_y_2 = start_y + ((h/2)*A_2);
    A_3 = func(start_y_2);
    %start_x_2 = start_x + h;
    start_y_3 = start_y + (h*A_3);
    A_4 = func(start_y_3);
    
    
    
    
    
new_y  = start_y + ((h/6) * (A_1 + (2 * A_2) + (2 * A_3) + A_4));
start_y = new_y;
start_x = start_x + h;
fprintf(1,'@ x =  %1.2f ',start_x)
fprintf(1,'  f(x,y) is:  %2.14f \n',start_y)

end
fprintf(1,'the f(%1.2f',start_x)
fprintf(1,')is:  %1.14f \n',start_y)
