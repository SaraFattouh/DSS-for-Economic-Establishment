function eval=streameva(ACTUAL,PREDICTED)

x =(ACTUAL()==1);

p = length(ACTUAL(x));
n = length(ACTUAL(~x));
N = p+n;

tp = sum(ACTUAL(x)==PREDICTED(x));
tn = sum(ACTUAL(~x)==PREDICTED(~x));
fp = n-tn;
fn = p-tp;

tp_rate = tp/p;
tn_rate = tn/n;

accuracy = (tp+tn)/N;
sensitivity = tp_rate;
specificity = tn_rate;
precision = tp/(tp+fp);
recall = sensitivity;
f_measure = 2*((precision*recall)/(precision + recall));
eval=[accuracy sensitivity specificity precision recall f_measure];

end


