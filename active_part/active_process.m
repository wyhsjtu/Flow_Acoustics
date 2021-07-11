clear all;clc;
%% Load without & with attached Tailpipe data
figure(1)
hold on;
load('SPL_1_3_OCT_RSS1');
plot(Frek,SPL_1_3_Oct,'k');

load('SPL_1_3_OCT_woTail_u10');
plot(Frek,SPL_1_3_Oct);
load('SPL_1_3_OCT_woTail_u20');
plot(Frek,SPL_1_3_Oct);
load('SPL_1_3_OCT_woTail_u40');
plot(Frek,SPL_1_3_Oct);

load('SPL_1_3_OCT_wTail_u10');
plot(Frek,SPL_1_3_Oct);
load('SPL_1_3_OCT_wTail_u20');
plot(Frek,SPL_1_3_Oct);
load('SPL_1_3_OCT_wTail_u40');
plot(Frek,SPL_1_3_Oct);

xlabel('Frequency datapoints of measurement [Hz]');
ylabel('1/3rd Octave Sound pressure level [dB]');
hold off;

%%
% figure(2)
% load('RefSoundSource');
% plot(Ref_Freq,Ref_Ters,'k');
% 
% figure(3);
% load('SPL_1_3_OCT_RSS1');
% plot(Frek,SPL_1_3_Oct);
% 
% figure(4);
% load('Aweight');
% plot(Ref_Freq,A);
%%






















