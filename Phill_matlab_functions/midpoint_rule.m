function midpoint_rule(lower_limit,upper_limit,N)

h = (upper_limit - lower_limit)/N;
j = h/2;
%fj = 0;
intergral = 0;
while j < upper_limit
    
    fj = the_func(j);
     %fprintf(1,'f(j) is:  %1.14f \n',fj)
    intergral = intergral + fj;
    j = j + h;
end
 ANS = h * intergral;
 fprintf(1,'The answer correct to 8 dp is:  %1.8f \n',ANS)