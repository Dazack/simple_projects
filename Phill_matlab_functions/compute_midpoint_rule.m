function result = compute_midpoint_rule(a,b,N)

h = (b - a)/N;
j = h/2;
intergral = 0;
while j < b
    
    fj = the_func(j);
    intergral = intergral + fj;
    j = j + h;
end
 result = h * intergral;
