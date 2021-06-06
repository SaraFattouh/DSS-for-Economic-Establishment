function [RMSE] = rmse(datafinal,out,res,numbercolumn)
j=0;
for(i=1:569)
    if out(i,numbercolumn)==-1
        j=j+1;
    small(j)= datafinal(i,numbercolumn);
    ressmall(j)= res(i,numbercolumn);
    end
end


 
 RMSE=0;
for(i=1:length(small))
RMSE=RMSE+((ressmall(i)-small(i))*(ressmall(i)-small(i)));
end

RMSE=RMSE/length(small);
RMSE=sqrt(RMSE);

end

