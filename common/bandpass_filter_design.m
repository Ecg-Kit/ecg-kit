function Hd = bandpass_filter_design(Fs)
%UNTITLED Returns a discrete-time filter System object.

%
% MATLAB Code
% Generated by MATLAB(R) 7.14 and the Signal Processing Toolbox 6.17.
%
% Generated on: 23-Apr-2013 18:34:23
%

Fstop1 = 0.001;  % First Stopband Frequency
Fpass1 = 5;      % First Passband Frequency
Fpass2 = 35;     % Second Passband Frequency
Fstop2 = 50;     % Second Stopband Frequency
Astop1 = 20;     % First Stopband Attenuation (dB)
Apass  = 1;      % Passband Ripple (dB)
Astop2 = 20;     % Second Stopband Attenuation (dB)
% Fs     = 1000;   % Sampling Frequency

h = fdesign.bandpass('fst1,fp1,fp2,fst2,ast1,ap,ast2', Fstop1, Fpass1, ...
    Fpass2, Fstop2, Astop1, Apass, Astop2, Fs);

Hd = design(h, 'butter', ...
    'MatchExactly', 'stopband');



% [EOF]
