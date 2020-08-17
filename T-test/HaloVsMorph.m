halo = [66.9, 12.2, 2.08, 1.05]; morph = [73.2, 14.4, 1.75, 0.88]; n=61;

%We calculate differense in sample means and divide that with stardord
%error of differense in sample means. This gives a high ratio if the means
%are different and standars mean is small but a small if differense in
%means is small and sample error high. 

num = halo(1,1) - morph(1,1);

%Asssuming the populations are the same we can average the variance.
pooled_est = (halo(1,2).^2 + morph(1,2).^2)/2;

den = sqrt(pooled_est/n + pooled_est/n);

t = num/den

vd = 2*(n-1)

num2 = halo(1,3) - morph(1,3);

pooled_var = ((halo(1,4).^2)*(9-1) + (morph(1,4).^2)*16-1)/(9+16-2)

den2 = sqrt(pooled_var/9 + pooled_var/16);

t2 = num2/den2

vd2 = 16+9-2

