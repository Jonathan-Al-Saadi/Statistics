group = ["n", "mean", "SD"];
Non_smokers_in_clean_env =  [200, 3.17, 0.74];
Non_smoker_smoke_env = [200, 2.72, 0.71];
Light_smokers = [200, 2.63, 0.73];
Moderate_smokers = [200, 2.29, 0.7];
Heavy_smokers = [200, 2.12, 0.73];

%Method 1

variance_int = (sum([Non_smokers_in_clean_env(1,3), Non_smoker_smoke_env(1,3), Light_smokers(1,3), Moderate_smokers(1,3), Heavy_smokers(1,3)].^2))/5

%Method 2

std_err_est = std([Non_smokers_in_clean_env(1,2), Non_smoker_smoke_env(1,2), Light_smokers(1,2), Moderate_smokers(1,2), Heavy_smokers(1,2)]);

variance_exp = 200*std_err_est^2

F = variance_exp/variance_int

v_n = 5-1
v_d = 5*(200-1)

x = 0:0.1:10;
y = fpdf(x,4,995)

plot(x,y)