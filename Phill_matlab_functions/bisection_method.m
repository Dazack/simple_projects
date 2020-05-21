function bisection_method(lower_limit, upper_limit,Threshold) 


    center = (lower_limit + upper_limit)/2;
     fprintf(1,'first guess is:  %1.6f \n',center)
    while abs(the_func(center))> Threshold
        
        if (the_func(lower_limit)*the_func(center))>0
            lower_limit = center;
        else upper_limit = center;
        end
         center = (lower_limit + upper_limit)/2;
     
        fprintf(1,'next guess is:  %1.6f \n',center)
    end
    
    
        

    ROOTS = center;
    
    fprintf(1,'answer is:  %1.6f \n',ROOTS)% Print out the answer