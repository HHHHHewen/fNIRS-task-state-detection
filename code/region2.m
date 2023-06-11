function [rightwer,rightmc,rightbroca,rightstc,leftwer,leftmc,leftbroca,leftstc] = region2(input)

rightwer=input(:,[1,2,9,10,19]);
rightmc=input(:,[3,4,11,20,29]);
rightbroca=input(:,[12,13,21,22,30,31,39,40]);
rightstc=input(:,[27,28,37,38]);

leftwer=input(:,[7,8,17,18,26]);
leftmc=input(:,[5,6,16,25,34]);
leftbroca=input(:,[14,15,23,24,32,33,41,42]);
leftstc=input(:,[35,36,43,44]);

end

