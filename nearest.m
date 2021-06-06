function [out] = nearest(data,out,numberneighbor)

 [a b]=kNearestNeighbors(data,data,numberneighbor);
 for(i=1:569)
     
     if out(i,5)==-1
         sum=0;
         count=0;
         for (j=2:numberneighbor)
             if (out(a(i,j),5)~=-1)
                 count=count+1;
                sum=sum+out(a(i,j),5);
             end
         end
         if count==0
         out(i,5)=mean(data(:,5));
         else
         out(i,5)=sum/(numberneighbor-1);
         end
     end

     if out(i,13)==-1
         sum=0;
         count=0;
         for (j=2:numberneighbor)
         if (out(a(i,j),13)~=-1)
             count=count+1;
             sum=sum+out(a(i,j),13);
             end
         end
         if count==0
         out(i,13)=mean(data(:,13));
         else   
         out(i,13)=sum/(numberneighbor-1);
         end
     end
     
      if out(i,23)==-1
         sum=0;
         count=0;
         for (j=2:numberneighbor)
             if (out(a(i,j),23)~=-1)
             count=count+1;
             sum=sum+out(a(i,j),23);
             end
         end
         if count==0
         out(i,23)=mean(data(:,23));
         else   
         out(i,23)=sum/(numberneighbor-1);
         end 
      end
 end
 
end

 

