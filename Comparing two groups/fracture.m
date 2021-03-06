n = 50; mean_all = [70.3, 76.2]; SEM_all = [2.55, 3.11]; std_all = semToStd(SEM_all,50);

%Method 1:
variance_1 = mean(std_all.^2);

%Method 2:
std_error_est = std(mean_all);

variance_2 = std_error_est^2 * n;

F = variance_2/variance_1

v_n= 2-1
v_d = 2*(50-1)
