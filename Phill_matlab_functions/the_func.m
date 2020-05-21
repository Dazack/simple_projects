function result = the_func(x)

%result = sin((x^2) + pi);   %%homework 1 problem one
% a = exp(x*(sin((x^2) + pi)));
% b = log((x^3) + x + 3);
% result = a/b;        %% homework 1 problem three

% % function to compute the Bessel function of the first kind
% % taking parameter, point 'x'. 
% 
% 
% 
% N = 40; % variable to set the amount of terms needed.
% ANS =0;% variable to store the answer.
% 
% % loop to compute the Bessel function
% % for N terms
% for m = 0:N
%     a = ((-1)^m)/((factorial(m))^2);%(-1)^m/(m!)^2m
%     b = (x/2)^(2*m);                %(x/2)^m
%     c = a*b;                        % the complete function
%     ANS = ANS + c;                  % addition of N terms
%     
% 
% end
% 
% result = ANS;     %% homework 1  problem four and homework 2 problem two
result = sin((x^1.5) - pi);    %% homework 2 problem one
%result = 1/(1-(cos(x))+.25);    %% homework 2  problem three
%result = exp(-x);
%result = (exp(-x^2))* cos(2*x);  %% homework 2  problem four

    