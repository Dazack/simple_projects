function plot_func(lower_limit,step_size, upper_limit)

for x = lower_limit:step_size:upper_limit
%result = sin((x^1.2)-pi);
 y = the_func(x);
  plot(x,y);
  hold on
  grid on
end

 