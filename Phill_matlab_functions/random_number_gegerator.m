function random_number_gegerator(a,c,m,X)

% a = 2 ; 
% c = 0 ; 
% m = 13 ;
% X = 1 ; 

number_of_turns = 102 ; 
random = zeros(number_of_turns,1);
a1 = a;
for(ct=1:number_of_turns) 

    X = mod(a*X+ c,m);
    random(ct) = X;
    %fprintf(1,' %1.0f\n',X)
    
end
 random =  random';

 
 a = 1;
 b = 2;
 while random(a) ~= random(b)
   
  if a > m 	% integer row(i) doesn�t repeat in the sequence
    a=a+1;		% see if the next integer repeats or not
    b=a;
  end;
  b=b+1;
end;
p=b-a;
fprintf(1,'@ a = %1.0f',a1)
fprintf(1,'  our period is  %1.0f\n\n',p)




% for(ct=1:number_of_turns) 
% 
%     
%     period(ct) = p;
%     %fprintf(1,' %1.0f\n',X)
% end
%  a = 1;
%  b = 2;
%  while period(a) ~= period(b)
%    
%   if a > m 	% integer row(i) doesn�t repeat in the sequence
%     a=a+1;		% see if the next integer repeats or not
%     b=a;
%   end;
%   b=b+1;
% end;
% period=b-a;
% fprintf(1,'  our periods may be  %1.0f\n',p)
     
     
     
     
  %fprintf(1,' %1.0f\n',random)
%   xseq=X;
% % for j=1:32		% generate m+5 integers	
% X = mod(a*X+ c,m) ;   	% (a*x + c) mod m;
%  xseq(ct)=[X];	% concatenate numbers, in a cloumn
%  row=xseq';	% transpose to a ro
% 
%  % find out the period
% i=1;
% j=2;
% while row(i) ~= row(j)
%   if j > m 	% integer row(i) doesn�t repeat in the sequence
%     i=i+1;		% see if the next integer repeats or not
%     j=i;
%   end;
%   j=j+1;
% end;
% p=j-i;
% fprintf(1,'our period may be  %1.0f\n',p)
%  
%  
%  
% fprintf(1,' %1.0f\n',X)
% %fprintf(1,'The row %1.0f\n',row)
% end
% 
% fprintf(1,'The row %1.0f\n',row)
% 
% % % find out the period
% % i=1;
% % j=2;
% % while row(i) ~= row(j)
% %   if j > m 	% integer row(i) doesn�t repeat in the sequence
% %     i=i+1;		% see if the next integer repeats or not
% %     j=i;
% %   end;
% %   j=j+1;
% % end;
% % p=j-i;
% fprintf(1,'our period may be  %1.0f\n',p)