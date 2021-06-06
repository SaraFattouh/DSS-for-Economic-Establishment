function [test,a1,b1,c1,a2,b2,c2,a3,b3,c3] = neuraln(data,numlayer)

testCount=1;
DataCount=1;
for(i=1:569)
   if mod(i,4)==0
     test(testCount,:)=data(i,:);
     testCount=testCount+1;
    else
     currentData(DataCount,:)=data(i,:);
     DataCount=DataCount+1;
   end
end
test=test;
currentData=currentData;


input1=currentData(:,[1:4,6:12,14:22,24:32])';
target1=currentData(:,5)';
input2=currentData(:,[1:12,14:22,24:32])';
target2=currentData(:,13)';
input3=currentData(:,[1:22,24:32])';
target3=currentData(:,23)';

net1=newff(input1,target1,numlayer);

net1.trainParam.goal=0.0002;
net1.trainParam.max_fail=20;
net1=train(net1,input1,target1);
a1=net1.iw;
b1=net1.lw;
c1=net1.b;

net2=newff(input2,target2,numlayer);

net2.trainParam.goal=0.0002;
net2.trainParam.max_fail=20;
net2=train(net2,input2,target2);
a2=net2.iw;
b2=net2.lw;
c2=net2.b;

net3=newff(input3,target3,numlayer);

net3.trainParam.goal=0.0002;
net3.trainParam.max_fail=20;
net3=train(net3,input3,target3);
a3=net3.iw;
b3=net3.lw;
c3=net3.b;

end
