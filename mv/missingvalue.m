function [out] = missingvalue(data,numbermissing)
xx=size(data);

count=ceil(xx(1)*numbermissing/100);
for i=1:count
    x1=random('unid',500);
    data(x1,5)=-1;
    x2 =random('unid',500);
    data(x2,13)=-1;
    x3 =random('unid',500);
    data(x3,23)=-1; 
end
out=data;
end


