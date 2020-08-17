avg_diab = 86.1; avg_none = 82.2; n = 25; std_diab = 2.09; std_none = 2.49;

pooled_est = (std_diab^2 + std_none^2)/2;

t = (avg_diab - avg_none)/sqrt(pooled_est/n + pooled_est/n)

vd = 2*(n-1)