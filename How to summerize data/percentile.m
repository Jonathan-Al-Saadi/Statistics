function[x] = percentile(V,p)

V = sort(V);

if mod(length(V) + 1,100/p) == 0
    x = V(1, [(length(V)+1)*p/100]);
else 
        a = fix((length(V) + 1) * p/100)
        x = mean(V(1, [a,a+1]));
end



