%% import data
clear;
clc;

numOfPeople=20;
numOfSig=20;
numOfChannel=44;
Classes=4;
numOfClass=2;

disp('start importing data');
filepath='E:\fnirs\class\tdata_crop\';
name={'A','I','U','O'};
for i=1:Classes
    name1=cell2mat(['D',name(i)]);
    eval([name1,'=importdata(cell2mat([filepath name(i) ''.mat'']));']);
    name2=cell2mat(['D',name(i),num2str(1)]);
    eval([name2,'=importdata(cell2mat([filepath name(i) ''1'' ''.mat'']));']);
end

Rest=importdata('E:\fnirs\class\rest\Rest.mat');
Rest1=importdata('E:\fnirs\class\rest\Rest1.mat');  % Rest3, Rest, Rest2

clear i filepath name1 name2;
disp('data import ends');

%% get mean value of each channel (feature extraction)
disp('feature extraction starts');

% fea=input(['please input what feature to use\n ' ...
%     '(1 for mean, 2 for variance, 3 for peak, 4 for min, 5 for slope,' ...
%     '6 for skewness, 7 for kurtosis, 8 for number of peaks)\n']);

fea1=1;
% fea2=3;
% fea3=6;
% fea4=7;

[A1,A11]=getFea(DA,DA1,numOfPeople,numOfSig,numOfChannel,fea1);
[I1,I11]=getFea(DI,DI1,numOfPeople,numOfSig,numOfChannel,fea1);
[O1,O11]=getFea(DO,DO1,numOfPeople,numOfSig,numOfChannel,fea1);
[U1,U11]=getFea(DU,DU1,numOfPeople,numOfSig,numOfChannel,fea1);
[rest1,rest11]=getFea(Rest,Rest1,numOfPeople,numOfSig,numOfChannel,fea1);

% [A2,A21]=getFea(DA,DA1,numOfPeople,numOfSig,numOfChannel,fea2);
% [I2,I21]=getFea(DI,DI1,numOfPeople,numOfSig,numOfChannel,fea2);
% [O2,O21]=getFea(DO,DO1,numOfPeople,numOfSig,numOfChannel,fea2);
% [U2,U21]=getFea(DU,DU1,numOfPeople,numOfSig,numOfChannel,fea2);
% [rest2,rest21]=getFea(Rest,Rest1,numOfPeople,numOfSig,numOfChannel,fea2);
% 
% [A3,A31]=getFea(DA,DA1,numOfPeople,numOfSig,numOfChannel,fea3);
% [I3,I31]=getFea(DI,DI1,numOfPeople,numOfSig,numOfChannel,fea3);
% [O3,O31]=getFea(DO,DO1,numOfPeople,numOfSig,numOfChannel,fea3);
% [U3,U31]=getFea(DU,DU1,numOfPeople,numOfSig,numOfChannel,fea3);
% [rest3,rest31]=getFea(Rest,Rest1,numOfPeople,numOfSig,numOfChannel,fea3);
% 
% [A4,A41]=getFea(DA,DA1,numOfPeople,numOfSig,numOfChannel,fea4);
% [I4,I41]=getFea(DI,DI1,numOfPeople,numOfSig,numOfChannel,fea4);
% [O4,O41]=getFea(DO,DO1,numOfPeople,numOfSig,numOfChannel,fea4);
% [U4,U41]=getFea(DU,DU1,numOfPeople,numOfSig,numOfChannel,fea4);
% [rest4,rest41]=getFea(Rest,Rest1,numOfPeople,numOfSig,numOfChannel,fea4);

HbO1=cat(1,A1,I1,U1,O1);
Hb1=cat(1,A11,I11,U11,O11);

% HbO1=cat(1,A1,I1,O1,U1);
% Hb1=cat(1,A11,I11,O11,U11);

% HbO2=cat(1,A2,I2,U2,O2);
% Hb2=cat(1,A21,I21,U21,O21);
% 
% HbO3=cat(1,A3,I3,U3,O3);
% Hb3=cat(1,A31,I31,U31,O31);
% 
% HbO4=cat(1,A4,I4,U4,O4);
% Hb4=cat(1,A41,I41,U41,O41);

[hbower1,hbomc1,hbobroca1,hbostc1]=region(HbO1);
[hbwer1,hbmc1,hbbroca1,hbstc1]=region(Hb1);
[rest1wer1,rest1mc1,rest1broca1,rest1stc1]=region(rest1);
[rest2wer1,rest2mc1,rest2broca1,rest2stc1]=region(rest11);

[righthbower1,righthbomc1,righthbobroca1,righthbostc1,lefthbower1,lefthbomc1,lefthbobroca1,lefthbostc1]=region2(HbO1);
[righthbwer1,righthbmc1,righthbbroca1,righthbstc1,lefthbwer1,lefthbmc1,lefthbbroca1,lefthbstc1]=region2(Hb1);
[rightrest1wer1,rightrest1mc1,rightrest1broca1,rightrest1stc1,leftrest1wer1,leftrest1mc1,leftrest1broca1,leftrest1stc1]=region2(rest1);
[rightrest2wer1,rightrest2mc1,rightrest2broca1,rightrest2stc1,leftrest2wer1,leftrest2mc1,leftrest2broca1,leftrest2stc1]=region2(rest11);




% [hbower2,hbomc2,hbobroca2,hbostc2]=region(HbO2);
% [hbwer2,hbmc2,hbbroca2,hbstc2]=region(Hb2);
% [rest1wer2,rest1mc2,rest1broca2,rest1stc2]=region(rest2);
% [rest2wer2,rest2mc2,rest2broca2,rest2stc2]=region(rest21);
% 
% [hbower3,hbomc3,hbobroca3,hbostc3]=region(HbO3);
% [hbwer3,hbmc3,hbbroca3,hbstc3]=region(Hb3);
% [rest1wer3,rest1mc3,rest1broca3,rest1stc3]=region(rest3);
% [rest2wer3,rest2mc3,rest2broca3,rest2stc3]=region(rest31);
% 
% [hbower4,hbomc4,hbobroca4,hbostc4]=region(HbO4);
% [hbwer4,hbmc4,hbbroca4,hbstc4]=region(Hb4);
% [rest1wer4,rest1mc4,rest1broca4,rest1stc4]=region(rest4);
% [rest2wer4,rest2mc4,rest2broca4,rest2stc4]=region(rest41);

HbOHb1=cat(2,HbO1,Hb1);
R1=cat(2,rest1,rest11);

right=[1,2,3,4,9,10,11,12,13,19,20,21,22,27,28,29,30,31,37,38,39,40];
left=[8,7,6,5,18,17,16,15,14,26,25,24,23,36,35,34,33,32,44,43,42,41];
rightHbOHb1=cat(2,HbO1(:,right),Hb1(:,right));
rightR1=cat(2,rest1(:,right),rest11(:,right));
leftHbOHb1=cat(2,HbO1(:,left),Hb1(:,left));
leftR1=cat(2,rest1(:,left),rest11(:,left));

% HbOHb2=cat(2,HbO2,Hb2);
% R2=cat(2,rest2,rest21);
% 
% HbOHb3=cat(2,HbO3,Hb3);
% R3=cat(2,rest3,rest31);
% 
% HbOHb4=cat(2,HbO4,Hb4);
% R4=cat(2,rest4,rest41);

wer1=cat(2,hbower1,hbwer1);
mc1=cat(2,hbomc1,hbmc1);
broca1=cat(2,hbobroca1,hbbroca1);
stc1=cat(2,hbostc1,hbstc1);

rightwer1=cat(2,righthbower1,righthbwer1);
rightmc1=cat(2,righthbomc1,righthbmc1);
rightbroca1=cat(2,righthbobroca1,righthbbroca1);
rightstc1=cat(2,righthbostc1,righthbstc1);


leftwer1=cat(2,lefthbower1,lefthbwer1);
leftmc1=cat(2,lefthbomc1,lefthbmc1);
leftbroca1=cat(2,lefthbobroca1,lefthbbroca1);
leftstc1=cat(2,lefthbostc1,lefthbstc1);


% wer2=cat(2,hbower2,hbwer2);
% mc2=cat(2,hbomc2,hbmc2);
% broca2=cat(2,hbobroca2,hbbroca2);
% stc2=cat(2,hbostc2,hbstc2);
% 
% wer3=cat(2,hbower3,hbwer3);
% mc3=cat(2,hbomc3,hbmc3);
% broca3=cat(2,hbobroca3,hbbroca3);
% stc3=cat(2,hbostc3,hbstc3);
% 
% wer4=cat(2,hbower4,hbwer4);
% mc4=cat(2,hbomc4,hbmc4);
% broca4=cat(2,hbobroca4,hbbroca4);
% stc4=cat(2,hbostc4,hbstc4);

brocamcstc1=cat(2,broca1,mc1,stc1);
brocamc1=cat(2,broca1,mc1);
brocastc1=cat(2,broca1,stc1);
mcstc1=cat(2,mc1,stc1);

rightbrocamcstc1=cat(2,rightbroca1,rightmc1,rightstc1);
rightbrocamc1=cat(2,rightbroca1,rightmc1);
rightbrocastc1=cat(2,rightbroca1,rightstc1);
rightmcstc1=cat(2,rightmc1,rightstc1);

leftbrocamcstc1=cat(2,leftbroca1,leftmc1,leftstc1);
leftbrocamc1=cat(2,leftbroca1,leftmc1);
leftbrocastc1=cat(2,leftbroca1,leftstc1);
leftmcstc1=cat(2,leftmc1,leftstc1);

% brocamcstc2=cat(2,broca2,mc2,stc2);
% brocamc2=cat(2,broca2,mc2);
% brocastc2=cat(2,broca2,stc2);
% mcstc2=cat(2,mc2,stc2);
% 
% brocamcstc3=cat(2,broca3,mc3,stc3);
% brocamc3=cat(2,broca3,mc3);
% brocastc3=cat(2,broca3,stc3);
% mcstc3=cat(2,mc3,stc3);
% 
% brocamcstc4=cat(2,broca4,mc4,stc4);
% brocamc4=cat(2,broca4,mc4);
% brocastc4=cat(2,broca4,stc4);
% mcstc4=cat(2,mc4,stc4);

rwer1=cat(2,rest1wer1,rest2wer1);
rmc1=cat(2,rest1mc1,rest2mc1);
rbroca1=cat(2,rest1broca1,rest2broca1);
rstc1=cat(2,rest1stc1,rest2stc1);

rightrwer1=cat(2,rightrest1wer1,rightrest2wer1);
rightrmc1=cat(2,rightrest1mc1,rightrest2mc1);
rightrbroca1=cat(2,rightrest1broca1,rightrest2broca1);
rightrstc1=cat(2,rightrest1stc1,rightrest2stc1);

leftrwer1=cat(2,leftrest1wer1,leftrest2wer1);
leftrmc1=cat(2,leftrest1mc1,leftrest2mc1);
leftrbroca1=cat(2,leftrest1broca1,leftrest2broca1);
leftrstc1=cat(2,leftrest1stc1,leftrest2stc1);

% rwer2=cat(2,rest1wer2,rest2wer2);
% rmc2=cat(2,rest1mc2,rest2mc2);
% rbroca2=cat(2,rest1broca2,rest2broca2);
% rstc2=cat(2,rest1stc2,rest2stc2);
% 
% rwer3=cat(2,rest1wer3,rest2wer3);
% rmc3=cat(2,rest1mc3,rest2mc3);
% rbroca3=cat(2,rest1broca3,rest2broca3);
% rstc3=cat(2,rest1stc3,rest2stc3);
% 
% rwer4=cat(2,rest1wer4,rest2wer4);
% rmc4=cat(2,rest1mc4,rest2mc4);
% rbroca4=cat(2,rest1broca4,rest2broca4);
% rstc4=cat(2,rest1stc4,rest2stc4);

rbrocamcstc1=cat(2,rbroca1,rmc1,rstc1);
rbrocamc1=cat(2,rbroca1,rmc1);
rbrocastc1=cat(2,rbroca1,rstc1);
rmcstc1=cat(2,rmc1,rstc1);

rightrbrocamcstc1=cat(2,rightrbroca1,rightrmc1,rightrstc1);
rightrbrocamc1=cat(2,rightrbroca1,rightrmc1);
rightrbrocastc1=cat(2,rightrbroca1,rightrstc1);
rightrmcstc1=cat(2,rightrmc1,rightrstc1);

leftrbrocamcstc1=cat(2,leftrbroca1,leftrmc1,leftrstc1);
leftrbrocamc1=cat(2,leftrbroca1,leftrmc1);
leftrbrocastc1=cat(2,leftrbroca1,leftrstc1);
leftrmcstc1=cat(2,leftrmc1,leftrstc1);

% rbrocamcstc2=cat(2,rbroca2,rmc2,rstc2);
% rbrocamc2=cat(2,rbroca2,rmc2);
% rbrocastc2=cat(2,rbroca2,rstc2);
% rmcstc2=cat(2,rmc2,rstc2);
% 
% rbrocamcstc3=cat(2,rbroca3,rmc3,rstc3);
% rbrocamc3=cat(2,rbroca3,rmc3);
% rbrocastc3=cat(2,rbroca3,rstc3);
% rmcstc3=cat(2,rmc3,rstc3);
% 
% rbrocamcstc4=cat(2,rbroca4,rmc4,rstc4);
% rbrocamc4=cat(2,rbroca4,rmc4);
% rbrocastc4=cat(2,rbroca4,rstc4);
% rmcstc4=cat(2,rmc4,rstc4);

disp('feature extraction ends');

%% 
x=[
0.55
0.75
0.475
0.5
0.75
0.75
0.65
0.65
0.5
0.675
0.625
0.75
0.825
0.85
0.525
0.375
0.75
0.6
0.725
0.65
];
y=[0.45
0.575
0.55
0.35
0.5
0.7
0.7
0.575
0.45
0.65
0.575
0.45
0.725
0.65
0.425
0.525
0.5
0.375
0.55
0.475
];
[h,p]=ttest(x,y)


