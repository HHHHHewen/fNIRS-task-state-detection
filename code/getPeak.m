function [out1,out2] = getPeak(in1,in2,numOfPeople,numOfSig,numOfChannel)
out1=zeros(numOfSig*numOfPeople,numOfChannel);
out2=zeros(numOfSig*numOfPeople,numOfChannel);

k=1;
for i=1:numOfPeople
    peak1=max(in1(:,:,:));
    peak1=reshape(peak1,numOfChannel,numOfSig*numOfPeople);
    out1=peak1';
    peak2=max(in2(:,:,:));
    peak2=reshape(peak2,numOfChannel,numOfSig*numOfPeople);
    out2=peak2';
    k=k+numOfSig;
end
end

