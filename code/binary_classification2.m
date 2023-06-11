%% classifier
disp('classification starts');

numOfFea=1;
brocastc=cat(1,leftmcstc1);
rbrocastc=cat(1,leftrmcstc1);

% numOfFea=2;
% brocastc=cat(1,brocastc1,brocastc2);
% rbrocastc=cat(1,rbrocastc1,rbrocastc2);

% numOfFea=2;
% brocastc=cat(1,HbOHb1,HbOHb4);
% rbrocastc=cat(1,R1,R4);

% numOfFea=3;
% brocastc=cat(1,HbOHb1,HbOHb3,HbOHb4);
% rbrocastc=cat(1,R1,R3,R4);

% numOfFea=4;
% brocastc=cat(1,HbOHb1,HbOHb2,HbOHb3,HbOHb4);
% rbrocastc=cat(1,R1,R2,R3,R4);

% clearvars -except brocastc rbrocastc numOfPeople Classes numOfSig numOfFea numOfClass

% type=input(['please input the type of classification basis, 1 for HbO, others for ' ...
%     'HbO and Hb\n']);

numOfChannel=18;  % wer:10; mc: 10; broca: 16; stc: 8; brocamcstc: 34; brocamc: 26;
                    % brocastc: 24; mcstc: 18
coeff=1;
s1=44;
result=zeros(5,s1,numOfPeople,Classes);

% if type==1 
%     for i=1:numOfPeople
%         for k=1:Classes
%             [X,Y]=generateXY(numOfSig,numOfClass,numOfChannel,rest,HbO,i);
%             
%             result(1,i,k)=SVM_linear(X,Y);
%             result(2,i,k)=SVM_gaussian(X,Y);
%             result(3,i,k)=SVM_polynomial(X,Y);
%             result(4,i,k)=lda(X,Y);
%             result(5,i,k)=knn(X,Y);
% 
%             
%             fprintf("LOOCV performance of %d-th trial and %d-th tone (SVM linear) = %f\n",i,k,result(1,i,k));
%             fprintf("LOOCV performance of %d-th trial and %d-th tone (SVM gaussian) = %f\n",i,k,result(2,i,k));
%             fprintf("LOOCV performance of %d-th trial and %d-th tone (SVM polynomial) = %f\n",i,k,result(3,i,k));
%             fprintf("LOOCV performance of %d-th trial and %d-th tone (lda) = %f\n",i,k,result(4,i,k));
%             fprintf("LOOCV performance of %d-th trial and %d-th tone (KNN)= %f\n",i,k,result(5,i,k));
% 
% %             result(i,k)=acc;
%         end
%         
%     end
% else
for s=44:s1
for i=1:numOfPeople
    for k=1:Classes
     
        person1=(i-1)*numOfSig+1;
        person2=(i-1)*numOfSig+1+numOfPeople*numOfSig*(k-1);
%         disp(person1);
%         disp(person2);
%         disp('end');
       
        [X,Y]=generateXY(numOfPeople,numOfFea,numOfSig,numOfClass,numOfChannel*coeff,brocastc,rbrocastc,person1,person2);

        result(1,s,i,k)=SVM_linear(X,Y,s);
        result(2,s,i,k)=SVM_gaussian(X,Y,s);
        result(3,s,i,k)=SVM_polynomial(X,Y,s);
        result(4,s,i,k)=lda(X,Y,s);
        result(5,s,i,k)=knn(X,Y,s);

        fprintf("%d channels: LOOCV performance of %d-th trial and %d-th tone (SVM linear) = %f\n",s,i,k,result(1,s,i,k));
        fprintf("%d channels: LOOCV performance of %d-th trial and %d-th tone (SVM gaussian) = %f\n",s,i,k,result(2,s,i,k));
        fprintf("%d channels: LOOCV performance of %d-th trial and %d-th tone (SVM polynomial) = %f\n",s,i,k,result(3,s,i,k));
        fprintf("%d channels: LOOCV performance of %d-th trial and %d-th tone (lda) = %f\n",s,i,k,result(4,s,i,k));
        fprintf("%d channels: LOOCV performance of %d-th trial and %d-th tone (KNN)= %f\n",s,i,k,result(5,s,i,k));
    end
end
% end

r=mean(result(:,s,:,:),3);
fprintf("%d channels: The average acc of the 1-st tone (SVM linear) is %f\n",s,r(1,1,1,1));
fprintf("%d channels: The average acc of the 2-nd tone (SVM linear) is %f\n",s,r(1,1,1,2));
fprintf("%d channels: The average acc of the 3-rd tone (SVM linear) is %f\n",s,r(1,1,1,3));
fprintf("%d channels: The average acc of the 4-th tone (SVM linear) is %f\n",s,r(1,1,1,4));

fprintf("%d channels: The average acc of the 1-st tone (SVM gaussian) is %f\n",s,r(2,1,1,1));
fprintf("%d channels: The average acc of the 2-nd tone (SVM gaussian) is %f\n",s,r(2,1,1,2));
fprintf("%d channels: The average acc of the 3-rd tone (SVM gaussian) is %f\n",s,r(2,1,1,3));
fprintf("%d channels: The average acc of the 4-th tone (SVM gaussian) is %f\n",s,r(2,1,1,4));

fprintf("%d channels: The average acc of the 1-st tone (SVM poly) is %f\n",s,r(3,1,1,1));
fprintf("%d channels: The average acc of the 2-nd tone (SVM poly) is %f\n",s,r(3,1,1,2));
fprintf("%d channels: The average acc of the 3-rd tone (SVM poly) is %f\n",s,r(3,1,1,3));
fprintf("%d channels: The average acc of the 4-th tone (SVM poly) is %f\n",s,r(3,1,1,4));

fprintf("%d channels: The average acc of the 1-st tone (lda) is %f\n",s,r(4,1,1,1));
fprintf("%d channels: The average acc of the 2-nd tone (lda) is %f\n",s,r(4,1,1,2));
fprintf("%d channels: The average acc of the 3-rd tone (lda) is %f\n",s,r(4,1,1,3));
fprintf("%d channels: The average acc of the 4-th tone (lda) is %f\n",s,r(4,1,1,4));

fprintf("%d channels: The average acc of the 1-st tone (knn) is %f\n",s,r(5,1,1,1));
fprintf("%d channels: The average acc of the 2-nd tone (knn) is %f\n",s,r(5,1,1,2));
fprintf("%d channels: The average acc of the 3-rd tone (knn) is %f\n",s,r(5,1,1,3));
fprintf("%d channels: The average acc of the 4-th tone (knn) is %f\n",s,r(5,1,1,4));

data1=reshape(result(1,s,:,:),20,4);
data2=reshape(result(2,s,:,:),20,4);
data3=reshape(result(3,s,:,:),20,4);
data4=reshape(result(4,s,:,:),20,4);
data5=reshape(result(5,s,:,:),20,4);
datamean1=mean(data1);
datamean2=mean(data2);
datamean3=mean(data3);
datamean4=mean(data4);
datamean5=mean(data5);
datamean=[datamean1,datamean2,datamean3,datamean4,datamean5];
% if s==1
%     data=datamean;
% else
%     data=cat(1,data, datamean);
% end

% str=strcat('mrmr_mean_all','.xls');
% str=strcat('nca_mean_all',num2str(s),'.xls');
% writematrix(data, str,'Sheet',s);   
end

%% save
data1=reshape(result(1,44,:,:),20,4);
data2=reshape(result(2,44,:,:),20,4);
data3=reshape(result(3,44,:,:),20,4);
data4=reshape(result(4,44,:,:),20,4);
data5=reshape(result(5,44,:,:),20,4);
dataa=[data1,data2,data3,data4,data5];                           
% [m, n] = size(dataa);            
% data_cell = mat2cell(dataa, ones(m,1), ones(n,1));    

% [dataa,index]=max(reshape(result(5,:,:,:),s1,20,4));
% dataa=reshape(dataa,20,4);
% index=reshape(index,20,4);
% write=[dataa,index];


% title = {'SVM linear', 'SVM gaussian', 'SVM poly', 'lda', 'knn'};                        
% write = [title; data_cell];                     
writematrix(data2, 'leftmcstc.xls');     
% writematrix(write, 'knn.xls');     
% writematrix(data, 'meanpeakskewnesskurtosis2_HbOHb.xls');

%%
% temp=readmatrix("temp.xls");
% write2=zeros(numOfPeople,Classes*5);
% for i=1:5
%     for j=1:numOfPeople
%         for k=1:Classes
%             for s=1:s1
%                 if(result(i,s,j,k)>=temp(j,k+(i-1)*4))
%                     write2(j,k+(i-1)*4)=s;
%                     break;
%                 end
%             end
%         end
%     end
% end
% writematrix(write2, 'channel.xls');   

%%
% for s1=1:4
%     str=strcat('nca_mean_all',num2str(s1),'.xls');
%     writematrix(A1, str);   
% end

%%
% x=[400,800,1000,2000,4000,5000];
% y=[0.044,0,0,0,0,0.512];
% plot(x,y,'LineWidth',3);
% xlabel('sample rate / kHz');
% ylabel('BER');
% grid on;
