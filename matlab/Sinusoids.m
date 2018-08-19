fs = 8192; % fs = 8192 samples/second, default sample rate
Ts = 1/fs % sample period Ts = 1/fs seconds/sample & is inverse of fs
t_max = 2; % max time is 2 seconds
N = t_max/Ts % determine the number of samples that corresponds to 2
%seconds of a sampled sequence (care must be taken that n_max is an integer;
%here the values are arranged so it will be, but try help round and doc ceil
%for common ways to convert floating point numbers to integer values)
n = 0:1:(N-1); % maximum value is N-1 since we start at 0
% alternatively we can define N = fs*t_max
f_A = 440 % concert pitch A is 440 Hz
x1 = sin(2*pi*f_A*Ts*n);
%sound(x1, fs)
%sound(0.1*x1, fs)

f_B = 880 % 880 Hz tone
x2 = sin(2*pi*f_B*Ts*n);
sound(x2, fs)