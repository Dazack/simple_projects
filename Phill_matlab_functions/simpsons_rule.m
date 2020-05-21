function simpsons_rule(lower_limit,upper_limit,N)

% Variables
% A = (2*pi);

%for upper_limit=1:10:200
    
h = (upper_limit-lower_limit)/N;
xj = lower_limit + h;
yj = lower_limit + (2*h);
first_calc = the_func(lower_limit);


fourth_calc = the_func(upper_limit);
sub_ans = 0;
sub_ans1 = 0;



for j = 1:1:(N/2)
    %fprintf(1,'now xj is:  %1.8f \n',xj);
    sum = the_func(xj);
    sub_ans = sub_ans + sum;
    xj = xj + (2*h);
end

second_calc = sub_ans;

for j = 1:1:(N/2)-1
    %fprintf(1,'now yj is:  %1.8f \n',yj);
    sum1 = the_func(yj);
    sub_ans1 = sub_ans1 + sum1;
    yj = yj + ((2*h));
end
    
    
third_calc = sub_ans1;





ANS = (h/3)* (first_calc + (4*second_calc) + (2*third_calc) + fourth_calc);
 fprintf(1,'Infinity is now:  %2.1f ',upper_limit);
%  fprintf(1,'For N =  %2.1f ',N);
 fprintf(1,'Answer is:  %0.8f \n\n\n',ANS);
 
%end

