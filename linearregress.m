function [out] = linearregress(data,out)

b=regress(data(:,5),data(:,[1:4,6:12,14:22,24:32]));
for(i=1:569)
    out1=out(:,[1:4,6:12,14:22,24:32]);
    t(i,1)=b(1)*out1(i,1)+b(2)*out1(i,2)+b(3)*out1(i,3)+b(4)*out1(i,4)+b(5)*out1(i,5)+b(6)*out1(i,6)+b(7)*out1(i,7)+b(8)*out1(i,8)+b(9)*out1(i,9)+b(10)*out1(i,10)+b(11)*out1(i,11)+b(12)*out1(i,12)+b(13)*out1(i,13)+b(14)*out1(i,14)+b(15)*out1(i,15)+b(16)*out1(i,16)+b(17)*out1(i,17)+b(18)*out1(i,18)+b(19)*out1(i,19)+b(20)*out1(i,20)+b(21)*out1(i,21)+b(22)*out1(i,22)+b(23)*out1(i,23)+b(24)*out1(i,24)+b(25)*out1(i,25)+b(26)*out1(i,26)+b(27)*out1(i,27)+b(28)*out1(i,28)+b(29)*out1(i,29);
if out(i,5)==-1
    out(i,5)=t(i,1);
end
end

b1=regress(data(:,13),data(:,[1:12,14:22,24:32]));
for(i=1:569)
    out2=out(:,[1:12,14:22,24:32]);
    t1(i,1)=b1(1)*out2(i,1)+b1(2)*out2(i,2)+b1(3)*out2(i,3)+b1(4)*out2(i,4)+b1(5)*out2(i,5)+b1(6)*out2(i,6)+b1(7)*out2(i,7)+b1(8)*out2(i,8)+b1(9)*out2(i,9)+b1(10)*out2(i,10)+b1(11)*out2(i,11)+b1(12)*out2(i,12)+b1(13)*out2(i,13)+b1(14)*out2(i,14)+b1(15)*out2(i,15)+b1(16)*out2(i,16)+b1(17)*out2(i,17)+b1(18)*out2(i,18)+b1(19)*out2(i,19)+b1(20)*out2(i,20)+b1(21)*out2(i,21)+b1(22)*out2(i,22)+b1(23)*out2(i,23)+b1(24)*out2(i,24)+b1(25)*out2(i,25)+b1(26)*out2(i,26)+b1(27)*out2(i,27)+b1(28)*out2(i,28)+b1(29)*out2(i,29)+b1(30)*out2(i,30);
if out(i,13)==-1
    out(i,13)=t1(i,1);
end
end

b2=regress(data(:,23),data(:,[1:22,24:32]));
for(i=1:569)
    out3=out(:,[1:22,24:32]);
    t2(i,1)=b2(1)*out3(i,1)+b2(2)*out3(i,2)+b2(3)*out3(i,3)+b2(4)*out3(i,4)+b2(5)*out3(i,5)+b2(6)*out3(i,6)+b2(7)*out3(i,7)+b2(8)*out3(i,8)+b2(9)*out3(i,9)+b2(10)*out3(i,10)+b2(11)*out3(i,11)+b2(12)*out3(i,12)+b2(13)*out3(i,13)+b2(14)*out3(i,14)+b2(15)*out3(i,15)+b2(16)*out3(i,16)+b2(17)*out3(i,17)+b2(18)*out3(i,18)+b2(19)*out3(i,19)+b2(20)*out3(i,20)+b2(21)*out3(i,21)+b2(22)*out3(i,22)+b2(23)*out3(i,23)+b2(24)*out3(i,24)+b2(25)*out3(i,25)+b2(26)*out3(i,26)+b1(27)*out3(i,27)+b1(28)*out3(i,28)+b2(29)*out3(i,29)+b2(30)*out3(i,30)+b2(31)*out3(i,31);
if out(i,23)==-1
    out(i,23)=t2(i,1);
end
end

end

