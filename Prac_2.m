%EEE4119F Prac 2 - Simulink
%% Question 1:
inputAmp = 50;
inputBias = 40;
delay = 0.5; %sec
delayZ = 0.5/0.02; %Samples
noiseSD = 0.5; %kPa
Sens = 45.9/1000; %V/kPa
Vs = 5; %Volts
rangeMin = -15; %kPa
rangeMax = 115; %kPa
sampleTime = 0.02; %sec

noisePow = noiseSD^2;
s = tf('s');
delayFn = exp(-delay*s);
delayFn2 = tf(1, 1, sampleTime, 'InputDelay', delayZ);

%Question 3:
T0 = 5; %deg celcius
Cr = 100000; %J/K
Qr1 = 1500; %W
Qr2 = 2500; %W
Qf = 1000; %W
% Ql = Heat flow loss [W]
Ta = 0; %°C
K = 100; %W/°C

Ton = 24;
Toff = 26;
delay2 = 3;






