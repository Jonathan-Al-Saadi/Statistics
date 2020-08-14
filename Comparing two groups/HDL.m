mean_all = [43.3, 58, 64.8]; std_all = [14.2, 17.7, 14.3]; n = 70;

%Method 1: Assuming it is the same population, the mean of variance in the
%samples should be a good estimate of the population estimate

variance_int = mean(std_all.^2);

%Method 2. Assuming it is the same population, the standard Error can be
%estimated by calculating the standard deviation of the means. The
%standard error and sample size can be used to estimate the standard
%deviation of the population. 

std_error_est = std(mean_all);

variance_exp = n*std_error_est^2;

F = variance_exp/variance_int

v_n = 3-1
v_d = 3*(n-1)
