% read in frequency response data acquired with MWLdaq_LV for use in
% sidlab
%
% read in 6 frequency response data files and save it as a single matlab
% file in sidlab notation
%
% depends on read_MWLdaq_LV.m
%
% v0.0.1
% Stefan Jacob sjacob@kth.se
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for aa=1:4
 disp(['Read in ',num2str(aa),'. microphone data file'])
 [~,~,data]=readMWLdaq_LV(); % read in MWLdaq_LV data files
 freq(aa,:)=data.sig_1_AMP0(:,1); % get the frequency vector
 frf(aa,:)=data.sig_1_AMP0(:,2).*exp((pi/180)*data.sig_2_PHI0(:,2)*1i); % convert to complex
end
 
if sum(sum(diff(freq)))==0 % check that all data have same frequencies
 frekvec=freq(1,:)'; % generate frekvec variable for sidlab
 xfer=frf'%reshape(frf',1,numel(frf)); % generate xfer variable for sidlab
 [file,path]=uiputfile('*.mat','Save Output for Sidlab'); % get output file
 save([path,file],'frekvec','xfer'); % save output
else
 disp('Files are not compatible, sampling changed between different microphone positions')
end

