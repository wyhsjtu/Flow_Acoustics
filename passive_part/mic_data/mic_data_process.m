clear all;clc;
%% Load mic FOAM END data
figure(1)
hold on;
load('FRF_Mic1_Foam_End');
plot(Frek,Amp);
load('FRF_Mic2_Foam_End');
plot(Frek,Amp);
load('FRF_Mic3_Foam_End');
plot(Frek,Amp);

xlabel('Frequency datapoints of measurement [Hz]');
ylabel('Amplitude of the FRF between the measured microphone signal and the reference signal');
hold off;
