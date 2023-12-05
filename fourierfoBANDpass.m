clear 
clc
ecg=load('ECG.txt');
t=ecg(:,1);
s=ecg(:,2);
title('Bandpass filter');
fs=100;
[a,b] = butter(3,[0.78 0.99],'bandpass');
bandpass=filter(a,b,s);
%plot(s)
hold on;
%plot(bandpass,'r')
 x=1:1:length(t);
 yf=fft(bandpass);
 title('Fourier for Bandpass filter');
 plot(x,yf);