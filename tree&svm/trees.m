function [PREDICTED,ACTUAL] = trees(res,x)
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
ACTUAL=test(:,24);

traindata=Data1(:,1:23)';
traintarget=Data1(:,24)';
testdata=test(:,1:23)';
PREDICTED=c4(traindata,traintarget,testdata,x);
PREDICTED=PREDICTED';

end

