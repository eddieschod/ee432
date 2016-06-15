% Parameters for the diagrams
% number of periods in time intervall for simulation
N_periods = 5;
% sample time for simulation
N_sample = 100 % number of samples per period T_ext
t_sample = 1/N_sample / f_0; % sampling time
% time vector for impulse response and step response
t_max = N_periods*N_sample*t_sample;
t_dia = 0:t_sample:t_max;
% create vector of the angular frequencies N_w values
% from 10-4 to 10+6
N_w = 1000; % Number of samples in frequency range
w = logspace(-4,6,N_w);