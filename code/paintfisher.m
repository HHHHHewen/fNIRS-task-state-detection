clc;
% clear;
close all;

scores=zeros(4,20,44);

for i=1:20
    for j=1:4
        a=(i-1)*20+1+(j-1)*400;
        b=(i-1)*20+1;
        X1=HbOHb1(a:(a+19),:);
        X2=R1(b:(b+19),:);
        Y1=ones(20,1);
        Y2=zeros(20,1);
        X=cat(1,X1,X2);
        Y=cat(1,Y1,Y2);
        temp=fisher(X,Y);
        temp2=zeros(44,1);
        for u=1:length(temp2)
            temp2(u)=temp(u)+temp(u+44);
        end
        scores(j,i,:)=temp2;
    end
end

scores=mean(scores,2);
scores=reshape(scores,4,44);
for i=1:4
    huatu6(scores(i,:));
end









