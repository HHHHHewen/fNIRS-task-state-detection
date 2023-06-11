function [out1,out2] = getVar(in1,in2,numOfPeople,numOfSig,numOfChannel)
% out1=zeros(numOfChannel,numOfSig,numOfPeople);
% out2=zeros(numOfChannel,numOfSig,numOfPeople);
out1=zeros(numOfSig*numOfPeople,numOfChannel);
out2=zeros(numOfSig*numOfPeople,numOfChannel);

k=1;
for i=1:numOfPeople
    var1=var(in1(:,:,:),1);
    var1=reshape(var1,numOfChannel,numOfSig*numOfPeople);
    out1=var1';
    var2=var(in2(:,:,:),1);
    var2=reshape(var2,numOfChannel,numOfSig*numOfPeople);
    out2=var2';
%     mean1=mean(in1(:,:,k:k+numOfSig-1),1);
%     out1(k:k+numOfSig-1,:)=mean1';
%     out2(:,:,i)=mean(in2(:,:,k:k+numOfSig-1),1);
    k=k+numOfSig;
end
end

