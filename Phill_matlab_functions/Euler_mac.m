function Euler_mac(lower_limit,upper_limit,N)

h = .001;
rough_answer = compute_midpoint_rule(lower_limit,upper_limit,N);
f_dash_upper = compute_diravitive(upper_limit);
f_dash_lower = compute_diravitive(lower_limit);
f_dash_term = ((h^2)/24)*((f_dash_upper)-(f_dash_lower));
f3_dash_term = ((7*(h^4))/5760)* ((compute_second_derivative(f_dash_upper))-(compute_second_derivative(f_dash_lower)));
answer = rough_answer + f_dash_term - f3_dash_term;
fprintf(1,'f_dash_term is:     %1.16f \n',f_dash_term)
fprintf(1,'f3_dash_term is:    %1.16f \n',f3_dash_term)
fprintf(1,'rounded answer is:  %1.16f \n',rough_answer)
fprintf(1,'final answer is:    %1.16f \n',answer)