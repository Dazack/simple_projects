function [msq, mn] = magic3()
% Reads in the 3x3 square array and verifys if it is magic square.
% Where msq is 1 when the square is magic and 0 if not.
% mn gives the value for the magic number

M = csvread('square.res');
Mr = sum(M,2);
Mc = sum(M);
Md1 = M(1,1) + M(2,2) + M(3,3);
Md2 = M(3,1) + M(2,2) + M(1,3);

msq = isequal(Mr(1,1),Mr(2,1),Mr(3,1),Mc(1,1),Mc(1,2),Mc(1,3),Md1,Md2);
mn = Md1*msq;