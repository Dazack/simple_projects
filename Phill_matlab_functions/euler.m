% Euler and predictor corrector method comparison
clear all
close all
clc

%Set start and end points as well as initial values
x_start = 2.0 ; 
x_end = 3.0 ; 
y_start = 4.0 ; 
% Choose integration step size.
h = 0.025 ; 
N = ceil(x_end - x_start)/h ; % ceiling function - rounds up to integer

% Set arrays
x = zeros(N,1) ;  % Store input values
y_euler = zeros(N,1) ;  % Store output values 
y_exact = zeros(N,1) ; 
y_pc = zeros(N,1) ; 

%Step through input values 

for(ct = 1:N) 
    
%New input value
x(ct) = x_start + h*ct ;

%For the first step ct == 1 and we use the initial values x_start and
%y_start
if(ct == 1 ) 
% Compute the derivative
f_value = myfunc(x_start,y_start) ;
%Compute Euler estimate
y_euler(ct) = y_start + h*f_value ;
% Compute pc provisional estimate (same as Euler) 
y_star = y_start + h*f_value ;
% Compute  estimate of derivative at x_1
f_value2 = myfunc(x(ct),y_star) ; 
% Compute PC estimate
y_pc(ct) =  y_start + 0.5*h*(f_value+f_value2)  ;
end

if( ct > 1) 
    % Compute the derivative
f_value = myfunc(x(ct-1),y_euler(ct-1)) ; 
%Compute Euler estimate
y_euler(ct) = y_euler(ct-1) + h*f_value ; 

% Compute pc provisional estimate (use previous PC estimate, not Euler) 
f_value = myfunc(x(ct-1),y_pc(ct-1)) ; 
% Compute provisional estimate
y_star  = y_pc(ct-1) + h*f_value ;
% Compute  estimate of derivative at x_n+1
f_value2 = myfunc(x(ct),y_star) ; 
% Compute PC estimate
y_pc(ct) =  y_pc(ct-1) + 0.5*h*(f_value+f_value2)  ;

end

%  Compute exact for comparison as well as errors
y_exact(ct) = power((1.0 + 0.25*x(ct)*x(ct)),2.0) ; 
error_euler(ct)  = y_exact(ct) - y_euler(ct) ; 
error_pc(ct)  = y_exact(ct) - y_pc(ct) ; 
fprintf(1,'the excact answer is: %1.2f\n',y_exact(ct))
fprintf(1,'the euler answer is: %1.2f\n',y_euler(ct))
fprintf(1,'the pc answer is: %1.2f\n',y_pc(ct))
fprintf(1,'our x value is: %1.2f\n\n',x(ct))

end



figure
title('comparison - linear') 
plot(x,(y_exact)) 
hold on
plot(x,(y_euler),'r')
plot(x,(y_pc),'k')

xlabel('x') 
ylabel('y') 
legend('exact','euler','pc') ; 
grid on

figure
title('comparison - log') 
plot(x,log10(y_exact)) 
hold on
plot(x,log10(y_euler),'r')
plot(x,log10(y_pc),'k')

xlabel('x') 
ylabel('y') 
legend('exact','euler','pc') ; 
grid on




figure
title('error  - log') 
plot(x,log10(abs(error_euler)),'r') 
hold on
plot(x,log10(abs(error_pc)),'k') 
xlabel('x') 
ylabel('error') 
legend('euler','pc') ; 
grid on
