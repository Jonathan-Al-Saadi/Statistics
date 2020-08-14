t_treat = 8.5; s_treat = 4.7; n = 21;
t_untreated = 13.9; s_untreated= 4.1;

%Method 1:

variance_avg = (sum([s_treat, s_untreated].^2))/2;

%Methord 2: Assume it is the same population

std_error_estimate =  std([t_treat, t_untreated]);

variance_est = n*std_error_estimate^2;

F = variance_est/variance_avg

v_n = 2-1
v_d = 2*(21-1)
