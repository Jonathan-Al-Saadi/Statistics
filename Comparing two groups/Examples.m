n1 = 25; x1 = 82.2; s1 = 2.49;
n2 = 25; x2 = 86.1; s2= 2.09;

variance1 = (s1^2 + s2^2)/2;

x3 = (x1 + x2)/2; 
s3 = sqrt(((x2-x3)^2 + (x1 - x3)^2)/(2-1));

s_bet = sqrt(25*s3^2);

F = (s_bet^2)/variance1;

v_n = 2-1;
v_d = 2*(n1-1);

x_h = 66.9; s_h = 12.2; n_h = 61;
x_m = 73.2; s_m = 14.4; n_m = 61;

%Method 1
v_avg = (s_h^2 + s_m^2)/2;
x_avg = (x_h + x_m)/2;

s_dev= sqrt(((x_h-x_avg)^2 + (x_m-x_avg)^2)/(2-1)); 
v_est = n_h*s_dev^2;

F2 = v_est/v_avg;

v_n2 = 2-1;
v_d2 = 2*(61-1);

x_ctrl = 11.5; s_ctrl = 1.3; n_ctrl = 26;
x_jog = 10.1; s_jog = 2.1; n_jog = 26;
x_run = 9.1; s_run = 2.4; n_run = 26;

SD = [s_ctrl, s_jog, s_run];

v_avg = sum(SD.^2)/length(SD)

mean = [x_ctrl, x_jog, x_run];

std_err = std(mean);

v_int = n_run*std_err^2

F=v_int/v_avg

v_n = 3-1
v_d = 3*(26-1)