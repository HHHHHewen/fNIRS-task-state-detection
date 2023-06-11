function acc = SVM_linear(X,Y,s)
% nca=fscnca(X,Y);
% tol=0.02;
% selidx=nca.FeatureWeights > tol*max(nca.FeatureWeights);
% features = X(:,selidx);
% SVMModel = fitcsvm(X,Y,'Standardize',true,'KernelFunction','linear',...
%                 'KernelScale','auto');      
% CVSVMModel = crossval(SVMModel,'Leaveout','on');
% acc = 1 - kfoldLoss(CVSVMModel);

PointCount = size(X,1);%获取样本量
c = cvpartition(PointCount,'LeaveOut');%loocv法
% count=0;
acc=0;
for ModelIndex = 1:c.NumTestSets
    TrainIndex = training(c,ModelIndex);
    TestIndex = test(c,ModelIndex);
    TrainData = X(TrainIndex,:);%提取训练数据
    TrainY=Y(TrainIndex,:);
    TestData = X(TestIndex,:);%提取验证数据
    TestY = Y(TestIndex,:);

%     nca=fscnca(TrainData,TrainY);
%     temp=nca.FeatureWeights;
% %     temp2=zeros(44,1);
% %     for i=1:length(temp2)
% %         temp2(i)=temp(i)+temp(i+44);
% %     end
% %     [weight,index]=sort(temp2,'descend');
%     [weight,index]=sort(temp,'descend');
%     % tol=0.02;
%     % selidx=nca.FeatureWeights > tol*max(nca.FeatureWeights);
% %     features = TrainData(:,[index(1:s),index(1:s)+44]);
% %     Testfeatures=TestData(:,[index(1:s),index(1:s)+44]);
% 
%     features = TrainData(:,[index(1:s)]);
%     Testfeatures=TestData(:,[index(1:s)]);

%     [idx,scores] = fscmrmr(TrainData,TrainY);
%     temp=zeros(88,1);
%     temp2=zeros(44,1);
%     for i=1:length(temp)
%         temp(idx(i))=scores(i);
%     end
%     for i=1:length(temp2)
%         temp2(i)=temp(i)+temp(i+44);
%     end
%     [weight,index]=sort(temp2,'descend');
%     features = TrainData(:,[index(1:s),index(1:s)+44]);
%     Testfeatures=TestData(:,[index(1:s),index(1:s)+44]);

%     scores=fisher(TrainData,TrainY);
%     temp2=zeros(44,1);
%     for i=1:length(temp2)
%         temp2(i)=scores(i)+scores(i+44);
%     end
%     [weight,index]=sort(temp2,'descend');
%     features = TrainData(:,[index(1:s),index(1:s)+44]);
%     Testfeatures=TestData(:,[index(1:s),index(1:s)+44]);

%     features = TrainData(:,[index(1:s)]);
%     Testfeatures=TestData(:,[index(1:s)]);

      features=TrainData;
      Testfeatures=TestData;

    SVMModel = fitcsvm(features,TrainY,'Standardize',true,'KernelFunction','linear',...
                'KernelScale','auto');   
    
    TestError=loss(SVMModel,Testfeatures,TestY);
    TestAcc=1-TestError;
    acc=acc+TestAcc;
%     disp(find(TestIndex==1));

%     CVSVMModel = crossval(SVMModel,TestData,TestY,'Leaveout','on');
%     acc=1-kfoldLoss(CVSVMModel)+acc;
    
%     PredictY=predict(SVMModel,TestData);
%     count=count+double(PredictY==TestY);
    %训练模型代码
end

% acc=count/c.NumTestSets;
acc=acc/c.NumTestSets;


end

