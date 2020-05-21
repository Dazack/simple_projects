% function to computethe first derivitive of any given function
% using the centeral difference Approximation.
% Taking in parameter 'num' whick is the point at which
% one needs the derivative to be avaluated.
function centeral_difference_Approximation(num)


N = 6; % just the number of points we're using.
h = zeros(N,1); % set up mt vectors.


% make h = .1 .01 .001 etc
% and compute the derivative.
for c = 1:N
    h(c) = power(10, -c);
    
     a = the_func(num + h(c));% f(xo +h)
     b = the_func(num - h(c));% f(xo-h)
     G_dash = (a-b)/(2*h(c)); % f(xo+h)-f(xo-h)/2h
     
    fprintf(1,'for h = %2.6f  ', h(c));
    fprintf(1,'The approximate derivitive is:(to 6 decimal places) %2.6f  \n\n',  G_dash);
    
end




    
    