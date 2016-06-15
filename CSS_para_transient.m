% Parameter program for the simulink model
% of the car suspension system
% to study the initial response
%     a) the transient response of the system
%     b) the response to an harmonic input
clear % delete all variables
close all % close all figure windows
% initial conditions of the system
y_0 = 0.01; % initial deflection in m (2nd integrator)
dy_dt_0 = 0; % initial velocity in m/s (1st integrator)
% external force
u_ext_0 = 500; % amplitude of harmonic input
% constant coefficients of the system
k = 130000; % constant of the spring in N/m
m_car = 1580; % mass of the car
m = m_car/4; % car has 4 wheels
w_0 = sqrt(k/m); % natural frequency
w_ext = w_0*10; % external angular frequencz in 1/s
f_ext = w_ext/(2*pi) % external frequency in Hz
T_ext = 1/f_ext % period of the harmonic input
% damping coefficient
b = 0; % no damping
%b = 700; % underdamping
%b = 2*m*w_0 % critical damping
%b = 30000; % overdamping
% system parameters
a_0 = k;
a_1 = b;
a_2 = m;
b_0 = 1;
% !!! b_1 and b_2 are not used in the model !!!
% calculations
disp('natural angular frequency of the system in 1/s: ')
w_0 = sqrt(k/m)
disp('oscillation period of the undamped system in s: ')
T_0 = 2*pi/w_0
disp('decay coefficient of the system in 1/s: ')
delta = b/(2*m)
disp('coefficient for critical damping in kg/s: ')
b_crit = 2*m*delta
% Parameters for Simulink
N_periods = 300; % number of periods for simulation
t_stop = N_periods*T_ext; % time intervall for simulation
N_sample = 100; % Number of samples in the simulation
t_sample = T_ext / N_sample; % sampling time
% end of parameter program