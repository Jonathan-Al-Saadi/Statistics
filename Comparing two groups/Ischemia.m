n = 7; mean_all = [0.233, 0.069, 0.065, 0.24, 0.18, 0.18, 0.184]; SEM_all = [0.024, 0.015, 0.008, 0.033, 0.033, 0.038]; std_all = semToStd(SEM_all,n);

%Method 1
variance_int = mean(std_all.^2);

%Method 2
std_error_est = std(mean_all); 
variance_exp = std_error_est^2 * n

%Calculation of F and freedom degrees.

F = variance_exp/variance_int

v_n = 7-1
v_d = 7*(7-1)

