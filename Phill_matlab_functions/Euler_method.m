function Euler_method

% approximatethe soultion to dy/dx = x*(y^.5)in the 
% range [2,3] where y(2) = 4. h = .1.

h = .1;
start_x = 2;
finish_x = 3;
start_y = 4;
N = ceil(finish_x - start_x)/h;
fprintf(1,'@ x =  %1.2f ',start_x)
fprintf(1,'  f(x,y) is:  %2.4f \n',start_y)

for coulter = 1:1:N

new_y  = start_y + h*func(start_x,start_y);
start_y = new_y;
start_x = start_x + h;
fprintf(1,'@ x =  %1.2f ',start_x)
fprintf(1,'  f(x,y) is:  %2.4f \n',start_y)

end
fprintf(1,'the f(%1.2f',start_x)
fprintf(1,')is:  %1.4f \n',start_y)
