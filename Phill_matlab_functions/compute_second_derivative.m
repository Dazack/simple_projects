% function to compute the second derivitive of any given function
% using the centeral difference Approximation and Richardson's 
% extrapolation.
% Taking in parameter 'x' which is the point at which
% one needs the derivative to be evaluated and 'N'the 
% amount of decimal places for h.
function result = compute_second_derivative(x)

h = .001; 

    a =  the_func(x - (2*h)); %f(x0 - 2h)
    b =  the_func(x - h);     %f(x0 - h)
    c1 = the_func(x);             %f(x0)
    d =  the_func(x + h);     %f(x0 + h)
    e =  the_func(x + (2*h)); %f(x0 + 2h)
    
   
    % Richardson's extrapolation - second derivative
   result = (-a + (16*b) - (30*c1) + (16*d) - e)/(12*(h^2)); 
   
%    % Central difference approxamation
%    result = (d - (2*c1) + b)/((h(c))^2);
    





    
    