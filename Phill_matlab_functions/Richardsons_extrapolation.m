% function to calculate the the current flowing
% through a capicitor usung Richardsons extrapolation
% taking in parameters from the table.
% Vtm2 is V(t-2)
% Vtm1 is V(t-1)
% Vtp1 is V(t+1)
% Vtp2 is V(t+2) and h is the accuracy required.
function Richardsons_extrapolation(Vtm2, Vtm1, Vtp1, Vtp2, h)

C = 10^-12;
result = (Vtm2 - (8* Vtm1) + (8*Vtp1) - Vtp2)/(12*h);%
curr = C*result;
current = curr*(10^(12));% To change to pico
fprintf(1,'The current is:  %2.4f pA \n',  current);