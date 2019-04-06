function Hd = rectangular3(input)
%RECTANGULAR3 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the Signal Processing Toolbox 7.2.
% Generated on: 17-Dec-2018 13:36:37

% FIR Window Bandpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = input;  % Sampling Frequency

N    = 10;       % Order
Fc1  = 310;      % First Cutoff Frequency
Fc2  = 600;      % Second Cutoff Frequency
flag = 'scale';  % Sampling Flag
% Create the window vector for the design algorithm.
win = rectwin(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
