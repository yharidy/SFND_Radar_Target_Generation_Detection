%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Ps = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
Pe = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%TODO: Calculate the wavelength
lamda = c/fc;

%TODO : Measure the Maximum Range a Radar can see. 
%R_max = ( (Ps * G^2 * lamda^2 * RCS) / (Pe*(4*pi)^3) )^(1/4);
R_max = 300; %m
d_res = 1;%m
fb = [0, 1.1e06, 13e06, 24e06]; %MHz

% TODO : Find the Bsweep of chirp for 1 m resolution
B_sweep = c / (2 * d_res);

% TODO : Calculate the chirp time based on the Radar's Max Range
Tchirp = 5.5*2*R_max/c;

% TODO : define the frequency shifts 
for i = 1 : size(fb,2)
    calculated_range = (c * Tchirp * fb(i)) / (2 * B_sweep);
    % Display the calculated range
    disp(calculated_range);    
end
