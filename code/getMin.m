function [out1,out2] = getMin(in1,in2,numOfPeople,numOfSig,numOfChannel)
out1=zeros(numOfSig*numOfPeople,numOfChannel);
out2=zeros(numOfSig*numOfPeople,numOfChannel);

k=1;
for i=1:numOfPeople
    min1=min(in1(:,:,:));
    min1=reshape(min1,numOfChannel,numOfSig*numOfPeople);
    out1=min1';
    min2=min(in2(:,:,:));
    min2=reshape(min2,numOfChannel,numOfSig*numOfPeople);
    out2=min2';
    k=k+numOfSig;
end
end

