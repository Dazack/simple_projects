%A function to find the roots of any equation. the equation must be specified in 'the_func'
%and the 'compute_diravitive' function is used too. A guess is neened and the threshold must be specified.
function roots(lower_limit, upper_limit,Threshold) 

%Threshold = .00000001;% Threshold to less than 6 decimal places
for guess = lower_limit:.5:upper_limit;% To take a number of guesses so as to ensure that all roots are found
    
 fprintf(1,'for a guess of  %3.1f ',guess)%  
if abs(compute_diravitive(guess)) > 0 % To check if we land on a guess where the dirivative is zero
    
    % Loop to find a root of any equation
    while abs(the_func(guess))> Threshold
    %  fprintf(1,'dirivative is:  %1.14f ',compute_diravitive(guess))  
    %fprintf(1,'guess is =  %1.14f \n',guess)% To keep track of the guess
    next_guess = guess - (the_func(guess)/compute_diravitive(guess));% Xn+1 = Xn - f(Xn)/f'(Xn)
    guess = next_guess;
    %fprintf(1,'next_guess =  %1.14f \n\n',next_guess)% Again just to keep track of the next_guess
    end

    ROOTS = guess;
    
    fprintf(1,'answer is:  %1.6f \n',ROOTS)% Print out the answer.
    
%If the dirivative is '0' then we print to the screen and ask for another guess.
else
    fprintf(1,'bad guess, dirivative of  %1.1f ',guess)
    fprintf(1,'  is  %1.1f\n ',compute_diravitive(guess))
    fprintf(1,'try another guess\n')
end
end
end




    