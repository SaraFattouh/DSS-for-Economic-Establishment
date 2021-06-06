function [PA]=pa(datafinal,out,res,numbercolumn)

j=0;
for(i=1:569)
    if out(i,numbercolumn)==-1 
        j=j+1;
    small(j)=datafinal(i,numbercolumn);
    ressmall(j)=res(i,numbercolumn);
    end   
end
Predictionstd=std(ressmall);
outputstd=std(small); 

meanPrediction=sum(ressmall)/length(ressmall);
meanoutput=sum(small)/length(small);

PA=0;
  for(i=1:length(small))
PA=PA+(((ressmall(i)-meanPrediction)*(small(i)-meanoutput))/((length(small)-1)*Predictionstd*outputstd));
  end
 PA=abs(PA);
end



