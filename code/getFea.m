function [out1,out2] = getFea(in1,in2,numOfPeople,numOfSig,numOfChannel,fea)
out1=zeros(numOfSig*numOfPeople,numOfChannel);
out2=zeros(numOfSig*numOfPeople,numOfChannel);

% for i=1:numOfPeople
    if fea==1
%         k=1;
%         for j=1:numOfPeople
        mean1=mean(in1(:,:,:),1);
        mean1=reshape(mean1,numOfChannel,numOfSig*numOfPeople);
        out1=mean1';
        mean2=mean(in2(:,:,:),1);
        mean2=reshape(mean2,numOfChannel,numOfSig*numOfPeople);
        out2=mean2';
%             k=k+numOfSig;
%         end
    elseif fea==2
%         k=1;
%         for j=1:numOfPeople
        var1=var(in1(:,:,:),1);
        var1=reshape(var1,numOfChannel,numOfSig*numOfPeople);
        out1=var1';
        var2=var(in2(:,:,:),1);
        var2=reshape(var2,numOfChannel,numOfSig*numOfPeople);
        out2=var2';
%             k=k+numOfSig;
%         end
    elseif fea==3
%         k=1;
%         for j=1:numOfPeople
        max1=max(in1(:,:,:));
        max1=reshape(max1,numOfChannel,numOfSig*numOfPeople);
        out1=max1';
        max2=max(in2(:,:,:));
        max2=reshape(max2,numOfChannel,numOfSig*numOfPeople);
        out2=max2';
%             k=k+numOfSig;
%         end
    elseif fea==4
%         k=1;
%         for j=1:numOfPeople
        min1=min(in1(:,:,:));
        min1=reshape(min1,numOfChannel,numOfSig*numOfPeople);
        out1=min1';
        min2=min(in2(:,:,:));
        min2=reshape(min2,numOfChannel,numOfSig*numOfPeople);
        out2=min2';
%             k=k+numOfSig;
%         end
    elseif fea==5
%         k=1;
%         for j=1:numOfPeople
        fea1=in1(numOfSig,:,:)-in1(1,:,:);
        fea1=reshape(fea1,numOfChannel,numOfSig*numOfPeople);
        out1=fea1';
        fea2=in2(numOfSig,:,:)-in2(1,:,:);
        fea2=reshape(fea2,numOfChannel,numOfSig*numOfPeople);
        out2=fea2';
%             k=k+numOfSig;
%         end
%         fea1=in1(numOfSig,:,:)-in1(1,:,:);
%         fea2=in2(numOfSig,:,:)-in2(1,:,:);
    elseif fea==6
        fea1=skewness(in1,1,1);
        fea1=reshape(fea1,numOfChannel,numOfSig*numOfPeople);
        out1=fea1';
        fea2=skewness(in2,1,1);
        fea2=reshape(fea2,numOfChannel,numOfSig*numOfPeople);
        out2=fea2';
    elseif fea==7
        fea1=kurtosis(in1,1,1);
        fea1=reshape(fea1,numOfChannel,numOfSig*numOfPeople);
        out1=fea1';
        fea2=kurtosis(in2,1,1);
        fea2=reshape(fea2,numOfChannel,numOfSig*numOfPeople);
        out2=fea2';
    elseif fea==8
        fea1=zeros(numOfChannel,numOfSig*numOfPeople);
        fea2=zeros(numOfChannel,numOfSig*numOfPeople);
        for j=1:numOfSig*numOfPeople
            fea1(:,j)=sum(imregionalmax(in1(:,:,j)));
            fea2(:,j)=sum(imregionalmax(in2(:,:,j)));
        end
        fea1=reshape(fea1,numOfChannel,numOfSig*numOfPeople);
        out1=fea1';
        fea2=reshape(fea2,numOfChannel,numOfSig*numOfPeople);
        out2=fea2';
    end
    
%     fea1=reshape(fea1,numOfChannel,numOfSig*numOfPeople);
%     out1=fea1';
%     fea2=reshape(fea2,numOfChannel,numOfSig*numOfPeople);
%     out2=fea2';
%     k=k+numOfSig;
% end


% end


% out1=mapminmax(out1,0,1);
% out2=mapminmax(out2,0,1);
end
