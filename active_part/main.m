%% Flow Noise Sound Power
clear; clc; close all;

U = [10 20 40];
D = 0.11;

RefSoundSoure = load("RefSoundSource.mat");
spl.Ref = load("SPL_1_3_OCT_RSS1.mat");
spl.u10 = load("SPL_1_3_OCT_woTail_u10.mat");
spl.u20 = load("SPL_1_3_OCT_woTail_u20.mat");
spl.u40 = load("SPL_1_3_OCT_woTail_u40.mat");
splT.u10 = load("SPL_1_3_OCT_wTail_u10.mat");
splT.u20 = load("SPL_1_3_OCT_wTail_u20.mat");
splT.u40 = load("SPL_1_3_OCT_wTail_u40.mat");
frekIndex = (6:28);
Lw.u10 = RefSoundSoure.Ref_Ters(2:end) + spl.u10.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex);
Lw.u20 = RefSoundSoure.Ref_Ters(2:end) + spl.u20.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex);
Lw.u40 = RefSoundSoure.Ref_Ters(2:end) + spl.u40.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex);    
LwT.u10 = RefSoundSoure.Ref_Ters(2:end) + splT.u10.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex);
LwT.u20 = RefSoundSoure.Ref_Ters(2:end) + splT.u20.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex); 
LwT.u40 = RefSoundSoure.Ref_Ters(2:end) + splT.u40.SPL_1_3_Oct(frekIndex) -...
        spl.Ref.SPL_1_3_Oct(frekIndex);

frek =  RefSoundSoure.Ref_Freq(2:end);
st = frek*D./U;
subplot(1,2,1)
plot(frek,  Lw.u10,frek,  Lw.u20, frek,  Lw.u40, 'linewidth', 1) 
grid on
title 'Without Tailpipe'
xlabel 'Frequency (Hz)'
ylabel 'Sound Power dB'
legend('u = 10.3 ms^{-1}', 'u = 20.5 ms^{-1}', 'u = 39.0 ms^{-1}')
subplot(1,2,2)
plot(frek,  LwT.u10,frek,  LwT.u20, frek,  LwT.u40, 'linewidth', 1) 
grid on
title 'With Tailpipe'
xlabel 'Frequency (Hz)'
ylabel 'Sound Power dB'
legend('u = 10.3 ms^{-1}', 'u = 20.5 ms^{-1}', 'u = 39.0 ms^{-1}')

figure(2)
subplot(1,2,1)
plot(st(:,1),  Lw.u10, st(:,2),  Lw.u20, st(:,3),  Lw.u40, 'linewidth', 1) 
grid on
title 'Without Tailpipe'
xlabel 'Strouhal Number'
ylabel 'Sound Power dB'
legend('u = 10.3 ms^{-1}', 'u = 20.5 ms^{-1}', 'u = 39.0 ms^{-1}')
subplot(1,2,2)
plot(st(:,1),  LwT.u10, st(:,2),  LwT.u20, st(:,3),  LwT.u40, 'linewidth', 1) 
grid on
title 'With Tailpipe'
xlabel 'Strouhal Number'
ylabel 'Sound Power dB'
legend('u = 10.3 ms^{-1}', 'u = 20.5 ms^{-1}', 'u = 39.0 ms^{-1}')

%% SPL vs mean flow speed
figure(3)
subplot(1,2,1)
plot([10.3 20.5])






