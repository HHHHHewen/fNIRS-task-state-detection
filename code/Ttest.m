clc;
clear all;
close all;
% load('C:\Users\gzz\Desktop\vF1\I\A.mat');
% C1=DA;
% load('C:\Users\gzz\Desktop\vF1\I\I.mat');
% C2=DI;
% load('C:\Users\gzz\Desktop\vF1\I\U.mat');
% C3=DU;
% load('C:\Users\gzz\Desktop\vF1\I\O.mat');
% C4=DO;
% load('C:\Users\gzz\Desktop\vF1\I\A1.mat');
% C5=DA1;
% load('C:\Users\gzz\Desktop\vF1\I\I1.mat');
% C6=DI1;
% load('C:\Users\gzz\Desktop\vF1\I\U1.mat');
% C7=DU1;
% load('C:\Users\gzz\Desktop\vF1\I\O1.mat');
% C8=DO1;
% 
load('E:\fnirs\class\tdata_crop\A.mat');
C1=DA;
load('E:\fnirs\class\tdata_crop\I.mat');
C2=DI;
load('E:\fnirs\class\tdata_crop\U.mat');
C3=DU;
load('E:\fnirs\class\tdata_crop\O.mat');
C4=DO;
load('E:\fnirs\class\tdata_crop\A1.mat');
C5=DA1;
load('E:\fnirs\class\tdata_crop\I1.mat');
C6=DI1;
load('E:\fnirs\class\tdata_crop\U1.mat');
C7=DU1;
load('E:\fnirs\class\tdata_crop\O1.mat');
C8=DO1;
load('E:\fnirs\class\rest\Rest.mat');
C9=Rest;
load('E:\fnirs\class\rest\Rest1.mat');
C10=Rest1;

D1=C1;
D2=C2;
D3=C3;
D4=C4;
D5=C9;
% for j=1:179  
%     for i= 1:44
%       fNIRSSignal1(j,i)= mean(D1(j,i,:));  
%       fNIRSSignal2(j,i)= mean(D2(j,i,:)); 
%       fNIRSSignal3(j,i)= mean(D3(j,i,:)); 
%       fNIRSSignal4(j,i)= mean(D4(j,i,:)); 
%     end
% end
% for i=1:44
%  figure
%  plot((1:179)/(200/27),fNIRSSignal1(:,i)-mean(fNIRSSignal1(round(2*200/27):round(4*200/27),i)));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal2(:,i)-mean(fNIRSSignal2(round(2*200/27):round(4*200/27),i)));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal3(:,i)-mean(fNIRSSignal3(round(2*200/27):round(4*200/27),i)));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal4(:,i)-mean(fNIRSSignal4(round(2*200/27):round(4*200/27),i)));
%  hold off
%  legend('1','2','3','4');
% end
% for i=1:44
%  figure
%  plot((1:179)/(200/27),fNIRSSignal1(:,i));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal2(:,i));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal3(:,i));
%  hold on
%  plot((1:179)/(200/27),fNIRSSignal4(:,i));
%  hold off
%  legend('1','2','3','4');
% end
% for i=1:44
%  figure
%  plot((1:179)/(200/27),fNIRSSignal2(:,i));
% end
% for i=1:44
%  figure
%  plot((1:179)/(200/27),fNIRSSignal3(:,i));
% end
% for i=1:44
%  figure
%  plot((1:179)/(200/27),fNIRSSignal4(:,i));
% end
% 
for j=1:400  
% for j=1:105
    for i= 1:44
      fNIRSSignals(i,j)= mean(D1(1:round(15*200/27),i,j));  
      fNIRSSignals1(i,j)= mean(D2(1:round(15*200/27),i,j)); 
      fNIRSSignals2(i,j)= mean(D3(1:round(15*200/27),i,j)); 
      fNIRSSignals3(i,j)= mean(D4(1:round(15*200/27),i,j)); 
%       fNIRSSignals(i,j)= mean(D1(round(4*200/27):round(19*200/27),i,j));  
%       fNIRSSignals1(i,j)= mean(D2(round(4*200/27):round(19*200/27),i,j)); 
%       fNIRSSignals2(i,j)= mean(D3(round(4*200/27):round(19*200/27),i,j)); 
%       fNIRSSignals3(i,j)= mean(D4(round(4*200/27):round(19*200/27),i,j)); 
      fNIRSSignals4(i,j)= mean(D5(1:round(5*200/27),i,j)); 
    end
end

 for i=1:44
%      fM1(i)= mean(fNIRSSignals(i,:));
%      fM2(i)= mean(fNIRSSignals1(i,:));
%      fM3(i)= mean(fNIRSSignals2(i,:));
%      fM4(i)= mean(fNIRSSignals3(i,:));
%      fM5(i)= mean(fNIRSSignals4(i,:));

    fM2(i)= mean(fNIRSSignals(i,:)-fNIRSSignals4(i,:));
    fM3(i)= mean(fNIRSSignals1(i,:)-fNIRSSignals4(i,:));
    fM4(i)= mean(fNIRSSignals2(i,:)-fNIRSSignals4(i,:));
    fM5(i)= mean(fNIRSSignals3(i,:)-fNIRSSignals4(i,:));
 end
%   huatu5(fM1)

%   huatu5(fM2)
%   huatu5(fM3)
%   huatu5(fM4)
%   huatu5(fM5)



% %   huatu5(fM5)
% for j=1:23
% for h=((j-1)*20+1):(j*20)
% for j=1:400  
%     for i= 1:44
% %       f1(i,(h-(j-1)*20))= mean(D1(round(7*200/27):round(12*200/27),i,h))-mean(D1(round(2*200/27):round(4*200/27),i,h));  
% %       f2(i,(h-(j-1)*20))= mean(D2(round(7*200/27):round(12*200/27),i,h))-mean(D2(round(2*200/27):round(4*200/27),i,h)); 
% %       f3(i,(h-(j-1)*20))= mean(D3(round(7*200/27):round(12*200/27),i,h))-mean(D3(round(2*200/27):round(4*200/27),i,h)); 
% %       f4(i,(h-(j-1)*20))= mean(D4(round(7*200/27):round(12*200/27),i,h))-mean(D4(round(2*200/27):round(4*200/27),i,h)); 
%       f1(i,j)= mean(D1(round(4*200/27):round(19*200/27),i,j));  
%       f2(i,j)= mean(D2(round(4*200/27):round(19*200/27),i,j)); 
%       f3(i,j)= mean(D3(round(4*200/27):round(19*200/27),i,j)); 
%       f4(i,j)= mean(D4(round(4*200/27):round(19*200/27),i,j)); 
% %       f1(i,j)= mean(D1(round(7*200/27):round(19*200/27),i,j))-mean(D1(round(2*200/27):round(4*200/27),i,j));  
% %       f2(i,j)= mean(D2(round(7*200/27):round(19*200/27),i,j))-mean(D2(round(2*200/27):round(4*200/27),i,j)); 
% %       f3(i,j)= mean(D3(round(7*200/27):round(19*200/27),i,j))-mean(D3(round(2*200/27):round(4*200/27),i,j)); 
% %       f4(i,j)= mean(D4(round(7*200/27):round(19*200/27),i,j))-mean(D4(round(2*200/27):round(4*200/27),i,j)); 
%       f5(i,j)= mean(D1(round(2*200/27):round(4*200/27),i,j));  
%       f6(i,j)= mean(D2(round(2*200/27):round(4*200/27),i,j)); 
%       f7(i,j)= mean(D3(round(2*200/27):round(4*200/27),i,j)); 
%       f8(i,j)= mean(D4(round(2*200/27):round(4*200/27),i,j)); 
%     end
% end
p11=zeros(1,44);
for i=1:44
% [p1(i), h1(i)] = ranksum(f1(i,:), f2(i,:));
[p1(i), h1(i)] = ranksum(fNIRSSignals(i,:), fNIRSSignals4(i,:));
end
h1=double(h1);
for i=1:44
%     if (mean(f2(i,:))-mean(f1(i,:)))<0
    if (mean(fNIRSSignals(i,:))-mean(fNIRSSignals4(i,:)))<0
        h1(i)=0;
    end
    if h1(i)>0
        p11(i)=p1(i);
    end
end
% huatu4(h1);
huatu5(fM2,h1);
% huatu5(fM3,h1)
% huatu5(fM4,h1)
% huatu5(fM5,h1)

p22=zeros(1,44);
for i=1:44
% [p1(i), h1(i)] = ranksum(f1(i,:), f2(i,:));
[p2(i), h2(i)] = ranksum(fNIRSSignals1(i,:), fNIRSSignals4(i,:));
end
h2=double(h2);
for i=1:44
%     if (mean(f2(i,:))-mean(f1(i,:)))<0
    if (mean(fNIRSSignals1(i,:))-mean(fNIRSSignals4(i,:)))<0
        h2(i)=0;
    end
    if h2(i)>0
        p22(i)=p2(i);
    end
end
% huatu4(h2);
huatu5(fM3,h2);

p33=zeros(1,44);
for i=1:44
% [p1(i), h1(i)] = ranksum(f1(i,:), f2(i,:));
[p3(i), h3(i)] = ranksum(fNIRSSignals2(i,:), fNIRSSignals4(i,:));
end
h3=double(h3);
for i=1:44
%     if (mean(f2(i,:))-mean(f1(i,:)))<0
    if (mean(fNIRSSignals2(i,:))-mean(fNIRSSignals4(i,:)))<0
        h3(i)=0;
    end
    if h3(i)>0
        p33(i)=p3(i);
    end
end
% huatu4(h3);
huatu5(fM4,h3);

p44=zeros(1,44);
for i=1:44
% [p1(i), h1(i)] = ranksum(f1(i,:), f2(i,:));
[p4(i), h4(i)] = ranksum(fNIRSSignals3(i,:), fNIRSSignals4(i,:));
end
h2=double(h2);
for i=1:44
%     if (mean(f2(i,:))-mean(f1(i,:)))<0
    if (mean(fNIRSSignals3(i,:))-mean(fNIRSSignals4(i,:)))<0
        h4(i)=0;
    end
    if h4(i)>0
        p44(i)=p4(i);
    end
end
% huatu4(h4);
huatu5(fM5,h4);


% huatu5(fM3,h1)
% huatu5(fM4,h1)
% huatu5(fM5,h1)

  
% p22=zeros(1,44);
% for i=1:44
% [p2(i), h2(i)] = ranksum(f1(i,:), f3(i,:));
% end
% h2=double(h2);
% for i=1:44
%     if (mean(f3(i,:))-mean(f1(i,:)))<0
%         h2(i)=0;
%     end
%     if h2(i)>0
%         p22(i)=p2(i);
%     end
% end
% huatu4(h2)
% p33=zeros(1,44);
% for i=1:44
% [p3(i), h3(i)] = ranksum(f1(i,:), f4(i,:));
% end
% h3=double(h3);
% for i=1:44
%     if (mean(f4(i,:))-mean(f1(i,:)))<0
%         h3(i)=0;
%     end
%     if h3(i)>0
%         p33(i)=p3(i);
%     end    
% end
% huatu4(h3)

% h11=double(h1);
% h12=double(h2);
% h13=double(h3);
% for i=1:44
% [p4(i), h4(i)] = signrank(f1(i,:), f5(i,:));
% end
% for i=1:44
%     if (mean(f1(i,:))-mean(f5(i,:)))<0
%         h4(i)=0;
%     end
% end
% huatu4(h4)
% 
% for i=1:44
% [p5(i), h5(i)] = signrank(f2(i,:), f6(i,:));
% end
% for i=1:44
%     if (mean(f2(i,:))-mean(f6(i,:)))<0
%         h5(i)=0;
%     end
% end
% huatu4(h5)
% 
% for i=1:44
% [p6(i), h6(i)] = signrank(f3(i,:), f7(i,:));
% end
% for i=1:44
%     if (mean(f3(i,:))-mean(f7(i,:)))<0
%         h6(i)=0;
%     end
% end
% huatu4(h6)
% 
% for i=1:44
% [p7(i), h7(i)] = signrank(f4(i,:), f8(i,:));
% end
% for i=1:44
%     if (mean(f4(i,:))-mean(f8(i,:)))<0
%         h7(i)=0;
%     end
% end
% huatu4(h7)
% 
% f9=cat(2,f2,f3,f4);
% f10=cat(2,f6,f7,f8);
% for i=1:44
% [p8(i), h8(i)] = signrank(f10(i,:), f9(i,:));
% end
% for i=1:44
%     if (mean(f9(i,:))-mean(f10(i,:)))<0
%         h8(i)=0;
%     end
% end
% huatu4(h8)
% 
% for i=1:44
% [p9(i), h9(i)] = ranksum(f1(i,:), f9(i,:));
% end
% for i=1:44
%     if (mean(f9(i,:))-mean(f1(i,:)))<0
%         h9(i)=0;
%     end
% end
% huatu4(h9)
% 
% % 
% for i=1:44
% [p10(i), h10(i)] = ranksum(f2(i,:), f3(i,:));
% end
% for i=1:44
%     if (mean(f3(i,:))-mean(f2(i,:)))<0
%         h10(i)=0;
%     end
% end
% huatu4(h10)
% 
% for i=1:44
% [p11(i), h11(i)] = ranksum(f4(i,:), f3(i,:));
% end
% for i=1:44
%     if (mean(f3(i,:))-mean(f4(i,:)))<0
%         h11(i)=0;
%     end
% end
% huatu4(h11)



% x=
% y=
% [h, p] = ttest(x, y);