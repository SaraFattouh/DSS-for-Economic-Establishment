function [out] = clustring(data,out,numbercluster)

[a b]=kmeans(data,numbercluster);

for (i=1:569)
    
    if out(i,5)==-1
        temp=a(i);
        out(i,5)=b(temp,5);
    end
    
    if out(i,13)==-1
        temp=a(i);
        out(i,13)=b(temp,13);
    end
    
    if out(i,23)==-1
        temp=a(i);
        out(i,23)=b(temp,23);
    end   
end
end


