function [out] = testneural(test,out,a1,b1,c1,a2,b2,c2,a3,b3,c3,numlayer)

input1=test(:,[1:4,6:12,14:22,24:32])';
target1=test(:,5)';
input2=test(:,[1:12,14:22,24:32])';
target2=test(:,13)';
input3=test(:,[1:22,24:32])';
target3=test(:,23)';
    
 net1=newff(input1,target1,numlayer);
 net1.iw=a1;
 net1.lw=b1;
 net1.b=c1; 
 net2=newff(input2,target2,numlayer);
 net2.iw=a2;
 net2.lw=b2;
 net2.b=c2;
 net3=newff(input3,target3,numlayer);
 net3.iw=a3;
 net3.lw=b3;
 net3.b=c3;
 
for (i=1:569) 
  if out(i,5)==-1
      k1=out(i,[1:4,6:12,14:22,24:32]);    
      output1=sim(net1,k1');
      out(i,5)=output1;
  end

  if out(i,13)==-1
     k2=out(i,[1:12,14:22,24:32]); 
     output2=sim(net2,k2');
     out(i,13)=output2;
  end

   if out(i,23)==-1 
     k3=out(i,[1:22,24:32]);
     output3=sim(net3,k3');
     out(i,23)=output3;
   end

end
end
