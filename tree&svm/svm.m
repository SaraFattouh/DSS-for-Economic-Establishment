function [PREDICTED,ACTUAL] = svm(res)
testCount=1;
DataCount=1;
for(i=1:569)
   if mod(i,4)==0
     test(testCount,:)=res(i,:);
     testCount=testCount+1;
    else
     Data1(DataCount,:)=res(i,:);
     DataCount=DataCount+1;
   end
end
test=test;
Data1=Data1;

traindata=Data1(:,2:32);
traintarget=Data1(:,1);
testdata=test(:,2:32);

SVMStruct = svmtrain(traindata,traintarget);
PREDICTED = svmclassify(SVMStruct,testdata);
ACTUAL=test(:,1);

end

