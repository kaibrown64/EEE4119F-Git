%EEE4119F Prac 2 - Simulink
%% Question 1:
inputAmp = 50;
inputBias = 40;
delay = 0.5; %sec
noiseSD = 0.5; %kPa
Sens = 45.9/1000; %V/kPa
Vs = 5; %Volts
rangeMin = -15; %kPa
rangeMax = 115; %kPa
sampleTime = 0.2; %sec

noisePow = noiseSD^2;
s = tf('s');
delayFn = exp(-delay*s);

%% Question 4:

function [Angles] = eulerMatrix(PQR)
a = 1;
b = 2;
c = 3;

stateSpace = [
    1 sin(a)*cos(b) cos(a)*tan(b);
    0 cos(a) -sin(a);
    0 sin(a)*sec(b) cos(a)*sec(b)
    ]

Angles = PQR*stateSpace;

end