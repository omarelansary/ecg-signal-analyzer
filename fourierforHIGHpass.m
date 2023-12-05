clear
clc 
ecg = load('ECG.txt');                                         
t=ecg(:,1);
s=ecg(:,2); 
hold on 
fs=100;
[b,a]=butter(1, 30/fs,'Z');  
h=filter(b, a, s);
%plot(s)
hold on;
%plot(h, 'r')
x=1:1:length(t);
yf=fft(h);
title('Fourier for highpass filter');
plot(x,yf);