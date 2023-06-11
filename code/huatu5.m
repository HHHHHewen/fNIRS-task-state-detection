% clc;
% clear all;
% close all;
function huatu5(a1,hhh)
% row_cmap = 32;  %定义色图矩阵的行数
% color_map=zeros(row_cmap,3);  %定义色图矩阵
% color_r = linspace(0.1,1,row_cmap);
% % 0.1:1/(row_cmap-1):1; 
% color_g = linspace(0.1,1,row_cmap);
% color_b = linspace(0.1,0.1,row_cmap);
% color_map(:,1) = color_r; 
% color_map(:,2) = color_g;
% color_map(:,3) = color_b;

% a1=[0.073163471	0.060144224	0.069739684	0.076729707	0.043287941	0.08243714	0.057434373	0.041337139	0.078263312	0.063944041	0.067715089	0.079914494	0.091538041	0.070077242	0.070023774	0.052522765	0.080876324	0.048138273	0.064342726	0.060358748	0.074103352	0.092170487	0.05836339	0.104134976	0.088348696	0.110960858	0.060531393	0.072535826	0.088063321	0.057758143	0.064631302	0.052622268	0.059372825	0.068554635	0.087980617	0.073481473	0.06231804	0.082733957	0.076013874	0.049602482	0.040400487	0.097738021	0.091995033	0.05942969
% % 
% ];
a(1:4)=a1(1:4);
a(5)=0;
a(6:23)=a1(5:22);
a(24)=0;
a(25:42)=a1(23:40);
a(43)=0;
a(44:47)=a1(41:44);


b=zeros(5,9);
b(5,1)=(a(1)+a(10))/2;  
b(5,2)=a(1);
b(5,3)=(a(1)+a(2)+a(11))/3;
b(5,4)=a(2);
b(5,5)=(a(2)+a(3)+a(12))/3;
b(5,6)=a(3);
b(5,7)=(a(3)+a(4)+a(13))/3;
b(5,8)=a(4);
b(5,9)=(a(4)+a(14))/2;
b(4,1)=a(10);
b(4,2)=(a(1)+a(10)+a(11)+a(20))/4;
b(4,3)=a(11);
b(4,4)=(a(2)+a(11)+a(12)+a(21))/4;
b(4,5)=a(12);
b(4,6)=(a(3)+a(12)+a(13)+a(22))/4;
b(4,7)=a(13);
b(4,8)=(a(4)+a(13)+a(14)+a(23))/4;
b(4,9)=a(14);
b(3,1)=(a(10)+a(20)+a(29))/3;
b(3,2)=a(20);
b(3,3)=(a(11)+a(20)+a(21)+a(30))/4;
b(3,4)=a(21);
b(3,5)=(a(12)+a(21)+a(22)+a(31))/4;
b(3,6)=a(22);
b(3,7)=(a(13)+a(22)+a(23)+a(32))/4;
b(3,8)=a(23);
b(3,9)=(a(14)+a(23)+a(33))/3;
b(2,1)=a(29);
b(2,2)=(a(20)+a(29)+a(30)+a(39))/4;
b(2,3)=a(30);
b(2,4)=(a(21)+a(30)+a(31)+a(40))/4;
b(2,5)=a(31);
b(2,6)=(a(22)+a(31)+a(32)+a(41))/4;
b(2,7)=a(32);
b(2,8)=(a(23)+a(32)+a(33)+a(42))/4;
b(2,9)=a(33);
b(1,1)=(a(29)+a(39))/2;
b(1,2)=a(39);
b(1,3)=(a(30)+a(39)+a(40))/3;
b(1,4)=a(40);
b(1,5)=(a(31)+a(40)+a(41))/3;
b(1,6)=a(41);
b(1,7)=(a(32)+a(41)+a(42))/3;
b(1,8)=a(42);
b(1,9)=(a(33)+a(42))/2;


c=zeros(5,9);
c(5,1)=(a(6)+a(15))/2;
c(5,2)=a(6);
c(5,3)=(a(6)+a(7)+a(16))/3;
c(5,4)=a(7);
c(5,5)=(a(7)+a(8)+a(17))/3;
c(5,6)=a(8);
c(5,7)=(a(8)+a(9)+a(18))/3;
c(5,8)=a(9);
c(5,9)=(a(9)+a(19))/2;
c(4,1)=a(15);
c(4,2)=(a(6)+a(15)+a(16)+a(25))/4;
c(4,3)=a(16);
c(4,4)=(a(7)+a(16)+a(17)+a(26))/4;
c(4,5)=a(17);
c(4,6)=(a(8)+a(17)+a(18)+a(27))/4;
c(4,7)=a(18);
c(4,8)=(a(9)+a(18)+a(19)+a(28))/4;
c(4,9)=a(19);
c(3,1)=(a(15)+a(25)+a(34))/3;
c(3,2)=a(25);
c(3,3)=(a(16)+a(25)+a(26)+a(35))/4;
c(3,4)=a(26);
c(3,5)=(a(17)+a(26)+a(27)+a(36))/4;
c(3,6)=a(27);
c(3,7)=(a(18)+a(27)+a(28)+a(37))/4;
c(3,8)=a(28);
c(3,9)=(a(19)+a(28)+a(38))/3;
c(2,1)=a(34);
c(2,2)=(a(25)+a(34)+a(35)+a(44))/4;
c(2,3)=a(35);
c(2,4)=(a(26)+a(35)+a(36)+a(45))/4;
c(2,5)=a(36);
c(2,6)=(a(27)+a(36)+a(37)+a(46))/4;
c(2,7)=a(37);
c(2,8)=(a(28)+a(37)+a(38)+a(47))/4;
c(2,9)=a(38);
c(1,1)=(a(34)+a(44))/2;
c(1,2)=a(44);
c(1,3)=(a(35)+a(44)+a(45))/3;
c(1,4)=a(45);
c(1,5)=(a(36)+a(45)+a(46))/3;
c(1,6)=a(46);
c(1,7)=(a(37)+a(46)+a(47))/3;
c(1,8)=a(47);
c(1,9)=(a(38)+a(47))/2;

Max1=max(max(b));
Max2=max(max(c));
if Max1>Max2
    Max=Max1;
else
    Max=Max2;
end
Min1=min(min(b));
Min2=min(min(c));
if Min1>Min2
    Min=Min2;
else
    Min=Min1;
end
disp(Min)
disp(Max)
figure;
[x,y]=meshgrid(1:9,1:5);
% % 测量数据
%斜率 HbO
h=b;
%斜率 HbR
% h=[0.11271803	0.12251786 	0.148299757	0.07053601 	0.070772724	0.05032934 	0.090304385	0.09045509 	0.097211271	0.12760136 	0.092806695	0.06578126 	0.083993422	0.09803791 	0.127518832;
% 0.10291820 	0.172282266	0.25184539 	0.133995673	0.09145282 	0.093782755	0.13012873 	0.104848788	0.07357736 	0.113029307	0.08503747 	0.080350338	0.08816110 	0.115915074	0.15699975; 
% 0.157382902	0.21184761 	0.195280488	0.12214846 	0.105607139	0.10322013 	0.119527611	0.12523397 	0.121570789	0.16590103 	0.11112001	0.08242153 	0.09701472	0.12046153 	0.138730644];
[xi,yi]=meshgrid(1:0.01:9,1:0.01:5);
hi=interp2(x,y,h,xi,yi,'cubic'); % 二维插值，三次样条插值
% figure;
% surf(xi,yi,hi) 
% xlabel('X'), ylabel('Y'), zlabel('Z')
h1=pcolor(xi,yi,hi);
h1.EdgeAlpha=0;

% colorbar;
% map=colormap;
% colorbar;

% grid off
% caxis([Min Max])
caxis([-0.0015, 0.0031]);
CustomColormap=importdata('Colormap3.mat');
colormap(CustomColormap); 
% set(gca,'position',[0,0,1,1])
% caxis([ -0.0011, 0.0017])
% caxis([-0.0012, 0.0026])
% colorbar;
% set(gca,'position',[0,0,1,1])
axis off 


coor=zeros(22,2);
coor(1,:)=[1.9,4.8];
coor(2,:)=[3.9,4.8];
coor(3,:)=[5.9,4.8];
coor(4,:)=[7.9,4.8];
coor(5,:)=[1.3,4];
coor(6,:)=[3.0,4];
coor(7,:)=[5.0,4];
coor(8,:)=[7.0,4];
coor(9,:)=[8.8,4];
coor(10,:)=[2.0,3];
coor(11,:)=[4.0,3];
coor(12,:)=[6.0,3];
coor(13,:)=[8.0,3];
coor(14,:)=[1.4,2];
coor(15,:)=[3.0,2];
coor(16,:)=[5.0,2];
coor(17,:)=[7.0,2];
coor(18,:)=[8.8,2];
coor(19,:)=[2.0,1.2];
coor(20,:)=[4.0,1.2];
coor(21,:)=[6.0,1.2];
coor(22,:)=[8.0,1.2];


right=[1,2,3,4,9,10,11,12,13,19,20,21,22,27,28,...
    29,30,31,37,38,39,40];
left=[5,6,7,8,14,15,16,17,18,23,24,25,26,32,33,...
    34,35,36,41,42,43,44];
broca=[12,13,21,22,30,31,39,40,15,14,24,23,33,32,...
    42,41];
wer=[1,2,7,8,9,10,17,18,19,26];
mc=[3,4,5,6,11,16,20,25,29,34];
stc=[27,28,35,36,37,38,43,44];

for i=1:length(broca)
    color{broca(i)}='r';
end

for i=1:length(wer)
    color{wer(i)}='k';
end

for i=1:length(mc)
    color{mc(i)}=[0.1,0.1,0.88];
end

for i=1:length(stc)
    color{stc(i)}=[0,1,0];
%     color{stc(i)}=[0.5,1,0.83];

end

% for i=1:length(hhh)
%     if hhh(i)==1
%         color{i}='r';
%     else
%         color{i}='k';
%     end
% end

% 画圈
% for i=1:22
%     if hhh(right(i))==1
%         hold on;
%         plot(coor(i,1),coor(i,2),'o','Markersize',125,'LineWidth',4,'Color',[0.50,0.54,0.53]);
%         hold on;
%     end
% %     0.9290,0.6940,0.1250
% end


% hold on;
% plot(1.9,4.8,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.9,4.8,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.9,4.8,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.9,4.8,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(1.3,4,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.0,4,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.0,4,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.0,4,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.8,4,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(2.0,3,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(4.0,3,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(6.0,3,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.0,3,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(1.4,2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.0,2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.0,2,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.0,2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.8,2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(2.0,1.2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(4.0,1.2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(6.0,1.2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.0,1.2,'wh','Markersize',55,'LineWidth',5);
% hold on;



% colorbar('position',[0.15 0.15 0.04 0.2]);
text(1.8,4.8,'1','FontSize',50,'color',color{1});
text(3.8,4.8,'2','FontSize',50,'color',color{2});
text(5.8,4.8,'3','FontSize',50,'color',color{3});
text(7.8,4.8,'4','FontSize',50,'color',color{4});
text(1.2,4,'9','FontSize',50,'color',color{9});
text(2.8,4,'10','FontSize',50,'color',color{10});
text(4.8,4,'11','FontSize',50,'color',color{11});
text(6.8,4,'12','FontSize',50,'color',color{12});
text(8.6,4,'13','FontSize',50,'color',color{12});
text(1.8,3,'19','FontSize',50,'color',color{19});
text(3.8,3,'20','FontSize',50,'color',color{20});
text(5.8,3,'21','FontSize',50,'color',color{21});
text(7.8,3,'22','FontSize',50,'color',color{22});
text(1.2,2,'27','FontSize',50,'color',color{27});
text(2.8,2,'28','FontSize',50,'color',color{28});
text(4.8,2,'29','FontSize',50,'color',color{29});
text(6.8,2,'30','FontSize',50,'color',color{30});
text(8.6,2,'31','FontSize',50,'color',color{31});
text(1.8,1.2,'37','FontSize',50,'color',color{37});
text(3.8,1.2,'38','FontSize',50,'color',color{38});
text(5.8,1.2,'39','FontSize',50,'color',color{39});
text(7.8,1.2,'40','FontSize',50,'color',color{40});
% % colorbar('position',[0.15 0.15 0.04 0.2])



d = colorbar;
ax = gca;
axpos = ax.Position;
d.Position(3) = d.Position(3);
ax.Position = axpos;
d.Position(1) = 0.82;
% c.Label.String = 'km^{-1}';
d.FontName = 'Times New Roman';
d.FontSize=40;
d.FontWeight='bold';





% % 测量数据
figure
[x,y]=meshgrid(1:9,1:5);
h=c;
%斜率 HbR
% h=[0.11271803	0.12251786 	0.148299757	0.07053601 	0.070772724	0.05032934 	0.090304385	0.09045509 	0.097211271	0.12760136 	0.092806695	0.06578126 	0.083993422	0.09803791 	0.127518832;
% 0.10291820 	0.172282266	0.25184539 	0.133995673	0.09145282 	0.093782755	0.13012873 	0.104848788	0.07357736 	0.113029307	0.08503747 	0.080350338	0.08816110 	0.115915074	0.15699975; 
% 0.157382902	0.21184761 	0.195280488	0.12214846 	0.105607139	0.10322013 	0.119527611	0.12523397 	0.121570789	0.16590103 	0.11112001	0.08242153 	0.09701472	0.12046153 	0.138730644];
[xi,yi]=meshgrid(1:0.01:9,1:0.01:5);
hi=interp2(x,y,h,xi,yi,'cubic'); % 二维插值，三次样条插值

% figure;
% surf(xi,yi,hi) 
% xlabel('X'), ylabel('Y'), zlabel('Z')
h1=pcolor(xi,yi,hi);
h1.EdgeAlpha=0;
% caxis([Min Max])
caxis([-0.0015, 0.0031]);
colormap(CustomColormap); 
% set(gca,'position',[0,0,1,1])
% caxis([-0.0011, 0.0017])
% caxis([-0.0012, 0.0026])
% colorbar;
set(gca,'position',[0,0,1,1])
axis off 

% hold on;
% plot(1.9,4.8,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.9,4.8,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.9,4.8,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.9,4.8,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(1.3,4,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.0,4,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.0,4,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.0,4,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.8,4,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(2.0,3,'wo','Markersize',55,'LineWidth',5);
% hold on;
% plot(4.0,3,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(6.0,3,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.0,3,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(1.4,2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(3.0,2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(5.0,2,'ws','Markersize',55,'LineWidth',5);
% hold on;
% plot(7.0,2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.8,2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(2.0,1.2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(4.0,1.2,'wv','Markersize',55,'LineWidth',5);
% hold on;
% plot(6.0,1.2,'wh','Markersize',55,'LineWidth',5);
% hold on;
% plot(8.0,1.2,'wh','Markersize',55,'LineWidth',5);
% hold on;

% 画圈
% for i=1:22
%     if hhh(left(i))==1
%         hold on;
%         plot(coor(i,1),coor(i,2),'o','Markersize',125,'LineWidth',4,'Color',[0.50,0.54,0.53]);
%         hold on;
%     end
% %     0.9290,0.6940,0.1250
% end

% colorbar('position',[0.15 0.15 0.04 0.2]);
text(1.8,4.8,'5','FontSize',50,'color',color{5});
text(3.8,4.8,'6','FontSize',50,'color',color{6});
text(5.8,4.8,'7','FontSize',50,'color',color{7});
text(7.8,4.8,'8','FontSize',50,'color',color{8});
text(1.2,4,'14','FontSize',50,'color',color{14});
text(2.8,4,'15','FontSize',50,'color',color{15});
text(4.8,4,'16','FontSize',50,'color',color{16});
text(6.8,4,'17','FontSize',50,'color',color{17});
text(8.6,4,'18','FontSize',50,'color',color{18});
text(1.8,3,'23','FontSize',50,'color',color{23});
text(3.8,3,'24','FontSize',50,'color',color{24});
text(5.8,3,'25','FontSize',50,'color',color{25});
text(7.8,3,'26','FontSize',50,'color',color{26});
text(1.2,2,'32','FontSize',50,'color',color{32});
text(2.8,2,'33','FontSize',50,'color',color{33});
text(4.8,2,'34','FontSize',50,'color',color{34});
text(6.8,2,'35','FontSize',50,'color',color{35});
text(8.6,2,'36','FontSize',50,'color',color{36});
text(1.8,1.2,'41','FontSize',50,'color',color{41});
text(3.8,1.2,'42','FontSize',50,'color',color{42});
text(5.8,1.2,'43','FontSize',50,'color',color{43});
text(7.8,1.2,'44','FontSize',50,'color',color{44});
% % colorbar('position',[0.15 0.15 0.04 0.2])
% % grid off



% d = colorbar;
% ax = gca;
% axpos = ax.Position;
% d.Position(3) = 0.5*d.Position(3);
% ax.Position = axpos;
% d.Position(1) = 0.82;
% % c.Label.String = 'km^{-1}';
% d.FontName = 'Times New Roman';
% d.FontSize=40;
% d.FontWeight='bold';