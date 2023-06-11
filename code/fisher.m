function scores = fisher(X,Y)
index0=~logical(Y);
index1=logical(Y);

I=X(index0,:);
R=X(index1,:);

MI=mean(I);
MR=mean(R);
VI=var(I);
VR=var(R);

scores=power((MI-MR),2)./(VI+VR);

end

