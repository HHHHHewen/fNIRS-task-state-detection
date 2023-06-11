function [X,Y] = generateXY(numOfPeople,numOfFea,numOfSig,numOfClass,numOfChannel,x,y,person1,person2)
X=zeros(numOfSig*numOfClass*numOfFea,numOfChannel);
Y=zeros(numOfSig*numOfClass*numOfFea,1);

n=1;
X(n:n+numOfSig-1,:)=y(person1:person1+numOfSig-1,:);
X(n+numOfSig:n+2*numOfSig-1,:)=x(person2:person2+numOfSig-1,:);
Y(n:n+numOfSig-1)=0;
Y(n+numOfSig:n+2*numOfSig-1)=1;

% n=2*numOfSig+1;
% mid1=numOfSig*numOfPeople;
% mid2=numOfSig*4*numOfPeople;
% X(n:n+numOfSig-1,:)=y(person1+mid1:person1+numOfSig-1+mid1,:);
% X(n+numOfSig:n+2*numOfSig-1,:)=x(person2+mid2:person2+numOfSig-1+mid2,:);
% Y(n:n+numOfSig-1)=0;
% Y(n+numOfSig:n+2*numOfSig-1)=1;
% 
% n=4*numOfSig+1;
% mid1=numOfSig*numOfPeople*2;
% mid2=numOfSig*4*numOfPeople*2;
% X(n:n+numOfSig-1,:)=y(person1+mid1:person1+numOfSig-1+mid1,:);
% X(n+numOfSig:n+2*numOfSig-1,:)=x(person2+mid2:person2+numOfSig-1+mid2,:);
% Y(n:n+numOfSig-1)=0;
% Y(n+numOfSig:n+2*numOfSig-1)=1;
% 
% n=6*numOfSig+1;
% mid1=numOfSig*numOfPeople*3;
% mid2=numOfSig*4*numOfPeople*3;
% X(n:n+numOfSig-1,:)=y(person1+mid1:person1+numOfSig-1+mid1,:);
% X(n+numOfSig:end,:)=x(person2+mid2:person2+numOfSig-1+mid2,:);
% Y(n:n+numOfSig-1)=0;
% Y(n+numOfSig:end)=1;

end

