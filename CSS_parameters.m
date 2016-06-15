% Parameters of the car suspension system
% constant coefficients of the systems
k = 130000; % constant of the spring in N/m
m_car = 1580; % mass of the car
m = m_car/4; % car has 4 wheels => 4 suspensions
F_ext_max = 500;
disp('natural angular frequency of the system in 1/s: ')
w_0 = sqrt(k/m)
disp('natural frequency of the system in Hz: ')
f_0 = w_0/(2*pi)
disp('oscillation period of the undamped system')
T_0 = 1/f_0
disp('maximum deflection in m: ')
y_max = F_ext_max/(m*w_0^2)
% decay coefficients in 1/s
% delta(1) = underdamping
% delta(2) = less underdamping in 1/s
% delta(3) = critical damping in 1/s
% delta(4) = overdamping in 1/s
delta = [w_0/5 w_0/2 w_0 2*w_0];