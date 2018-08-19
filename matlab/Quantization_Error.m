fs = 1000;
Ts = 1/fs;
t = 0:Ts:1;
x = sin(2*pi*4*t); % 4 Hz sinusoid

% Nbits = 16; % number of bits
% L = 2^Nbits; % number of levels
% xq_int = floor((x+1) * (L/2)); % quantization level, integer on [0,L]
% xq = (xq_int - L/2 + 1/2) / (L/2); % quantized value (rounded)
Nbits = 2; % number of bits
L = 2^Nbits; % number of levels
xq_int = floor((x+1) * (L/2)); % quantization level
xq = (xq_int - L/2) / (L/2); % quantized value (truncated)
e = x - xq;

figure
plot(t,x,t,xq,t,e)
xlabel('t')
legend('x','xq','e')

S = mean(xq.^2); % signal power is mean square value
Q = mean(e.^2); % noise power is mean square value
SQNR = 10*log10(S/Q); % in dB