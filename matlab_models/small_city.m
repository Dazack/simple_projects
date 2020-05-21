function Small_City = small_city
% The following code random generates a 3x3 matrix town and find the
% cheapest route across it.

A = rand(3,3); %Generates 3 by 3 matrix containing random variables
disp(A) %Displays said matrix

% As it is illogical to not go straight from the first node to the second
%we can treat the first two numbers in a row as a singles number.
firstTwoAcrossTop =A(1,1) + A( 1, 2); %
firstTwoAcrossMiddle =A(2,1) + A( 2, 2); %
firstTwoAcrossBottom =A(3,1) + A( 3, 2); %

%Initialize middle nodes and end nodes
middleTop = A(1,2); %
centerNode = A(2,2); %
middleBottom = A(3,2); %

finishTop = A(1,3); %
finishMiddle = A(2,3); %
finishBottom = A(3,3); %

%Initialize paths

%Starting from top 
Path1 = firstTwoAcrossTop + finishTop; % Straight across top row
Path2 = firstTwoAcrossTop + centerNode + finishMiddle; %
Path3 = firstTwoAcrossTop + centerNode + middleBottom + finishBottom; %

%Starting from middle
Path4 = firstTwoAcrossMiddle + middleTop + finishTop; %
Path5 = firstTwoAcrossMiddle + finishMiddle; % Straight across middle row
Path6 = firstTwoAcrossMiddle + middleBottom + finishBottom; %

%Starting from bottom
Path7 = firstTwoAcrossBottom + centerNode + middleTop + finishTop;
Path8 = firstTwoAcrossBottom  + centerNode + finishMiddle; %
Path9 = firstTwoAcrossBottom  + finishBottom; % Straight across bottom row

V = [Path1 , Path2, Path3, Path4, Path5, Path6, Path7, Path8, Path9]; % Vector V which stores path values

M = min(V); %Calculates smallest value in V, i.e the shortest route, and stores value in M

for i=1:1:9
   fprintf('Path %d = %1.7f\n',i,V(i)); % Prints off path values
end 

S = sprintf('Cheapest path cost is %s', M); %
disp(S) %Displays cheapest path


