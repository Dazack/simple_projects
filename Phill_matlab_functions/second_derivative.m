% function to compute the second derivitive of any given function
% using the centeral difference Approximation and Richardson's 
% extrapolation.
% Taking in parameter 'x' which is the point at which
% one needs the derivative to be evaluated and 'N'the 
% amount of decimal places for h.
function second_derivative(x,N)

h = zeros(N,1); % set up mt vector.

for c = 1:N
    h(c) = power(10, -c);
    a =  the_func(x - (2*h(c))); %f(x0 - 2h)
    b =  the_func(x - h(c));     %f(x0 - h)
    c1 = the_func(x);             %f(x0)
    d =  the_func(x + h(c));     %f(x0 + h)
    e =  the_func(x + (2*h(c))); %f(x0 + 2h)
    
   
    % Richardson's extrapolation - second derivative
   g = (-a + (16*b) - (30*c1) + (16*d) - e)/(12*(h(c)^2)); 
   
   % Central difference approxamation
   g1 = (d - (2*c1) + b)/((h(c))^2);
    
     fprintf(1,'for h = %2.6f  ', h(c));
     fprintf(1,'The Central difference approxamation is:  %2.4f  \n',  g1);
     fprintf(1,'                  Richardsons extrapolation is:  %19.4f  \n\n',  g);
   
    
    
end




    
    