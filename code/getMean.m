function [out1,out2] = getMean(in1,in2,numOfPeople,numOfSig,numOfChannel)
% out1=zeros(numOfChannel,numOfSig,numOfPeople);
% out2=zeros(numOfChannel,numOfSig,numOfPeople);
out1=zeros(numOfSig*numOfPeople,numOfChannel);
out2=zeros(numOfSig*numOfPeople,numOfChannel);

k=1;
for i=1:numOfPeople
    mean1=mean(in1(:,:,:),1);
    mean1=reshape(mean1,numOfChannel,numOfSig*numOfPeople);
    out1=mean1';
    mean2=mean(in2(:,:,:),1);
    mean2=reshape(mean2,numOfChannel,numOfSig*numOfPeople);
    out2=mean2';
%     mean1=mean(in1(:,:,k:k+numOfSig-1),1);
%     out1(k:k+numOfSig-1,:)=mean1';
%     out2(:,:,i)=mean(in2(:,:,k:k+numOfSig-1),1);
    k=k+numOfSig;
end
end

