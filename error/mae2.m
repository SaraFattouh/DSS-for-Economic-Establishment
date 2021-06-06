function [MAE] = mae( datafinal,out,res,numbercolumn )

j=0;
for(i=1:569)
    if out(i,numbercolumn)==-1
        j=j+1;
    small(j)= datafinal(i,numbercolumn);
    ressmall(j)= res(i,numbercolumn);
    end
end
MAE=0;

       for(i=1:length(small))
            MAE=MAE+abs(ressmall(i)-small(i));    
       end
   MAE=MAE/length(small);
end

