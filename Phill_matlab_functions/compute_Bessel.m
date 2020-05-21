% function to compute the Bessel function of the first kind
% taking parameter, point 'x'. 

function result = compute_Bessel(x,N)

%N = 5; % variable to set the amount of terms needed.
ANS =0;% variable to store the answer.

% loop to compute the Bessel function
% for N terms
for m = 0:N
    a = ((-1)^m)/((factorial(m))^2);%(-1)^m/(m!)^2m
    b = (x/2)^(2*m);                %(x/2)^m
    c = a*b;                        % the complete function
    ANS = ANS + c;                  % addition of N terms
    
        fprintf(1,'for m = %2.1f, ', m);
    fprintf(1,'the compution is:    %2.4f\n',  ANS);
    

end

result = ANS;
    