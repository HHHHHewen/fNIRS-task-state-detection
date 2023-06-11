clear;
clc;

numOfPeople=20;
numOfSig=20;
numOfChannel=44;
numOfClass=4;

resolution=1000/135;
start_index=round(4*resolution); 
end_index=round(19*resolution);

disp('import data');
filepath='E:\fnirs\class\tdata_init\';
name={'A','I','O','U'};
for i=1:numOfClass
    name1=cell2mat(['D',name(i)]);
    eval([name1,'=importdata(cell2mat([filepath name(i) ''.mat'']));']);
    name2=cell2mat(['D',name(i),num2str(1)]);
    eval([name2,'=importdata(cell2mat([filepath name(i) ''1'' ''.mat'']));']);
%     load(cell2mat([filepath name(i) '.mat']));
end

DA=DA(start_index:end_index,:,:);
DA1=DA1(start_index:end_index,:,:);
DI=DI(start_index:end_index,:,:);
DI1=DI1(start_index:end_index,:,:);
DO=DO(start_index:end_index,:,:);
DO1=DO1(start_index:end_index,:,:);
DU=DU(start_index:end_index,:,:);
DU1=DU1(start_index:end_index,:,:);

path='E:/fnirs/class/tdata333/A.mat';
save(path, 'DA');
path='E:/fnirs/class/tdata333/A1.mat';
save(path, 'DA1');
path='E:/fnirs/class/tdata333/I.mat';
save(path, 'DI');
path='E:/fnirs/class/tdata333/I1.mat';
save(path, 'DI1');
path='E:/fnirs/class/tdata333/O.mat';
save(path, 'DO');
path='E:/fnirs/class/tdata333/O1.mat';
save(path, 'DO1');
path='E:/fnirs/class/tdata333/U.mat';
save(path, 'DU');
path='E:/fnirs/class/tdata333/U1.mat';
save(path, 'DU1');

clear i filepath name1 name2;
disp('data import finishes');



