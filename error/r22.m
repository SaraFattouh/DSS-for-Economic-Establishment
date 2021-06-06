function [R2] = r2(datafinal,out,res,numbercolumn)

j=0;
for(i=1:569)
    if out(i,numbercolumn)==-1
        j=j+1;
    small(j)= datafinal(i,numbercolumn);
    ressmall(j)= res(i,numbercolumn);
    end
end

Predictionstd=std(ressmall);
outputstd=std(small);

meanPrediction=sum(ressmall)/length(ressmall);
meanoutput=sum(small)/length(small);

R2=0;
for(i=1:length(small))
    
     R2=R2+(ressmall(i)-meanPrediction)*(small(i)-meanoutput);
end
R2=R2/(length(small)*Predictionstd*outputstd);
R2=R2*R2;

end

