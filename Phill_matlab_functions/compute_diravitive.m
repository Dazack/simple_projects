% function to computethe first derivitive of any given function
% using the centeral difference Approximation.
% Taking in parameter 'num' whick is the point at which
% one needs the derivative to be avaluated.
function result = compute_diravitive(num)
      
     h = .001; % set up mt vectors.
     a = the_func(num + h);% f(xo +h)
     b = the_func(num - h);% f(xo-h)
     result = (a-b)/(2*h); % f(xo+h)-f(xo-h)/2h
    




    
    