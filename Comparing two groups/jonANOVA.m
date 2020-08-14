function [F, v_n, v_d] = jonANOVA(mean_all, std_all, n)
variance_1 = mean(std_all.^2);
std_error_est = std(mean_all);
variance_2 = n*std_error_est.^2;
F = variance_2/variance_1;
v_n = length(mean_all)-1; v_d = length(mean_all)*(n-1);
end
