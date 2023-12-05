clear
clc 
ecg = load('ECG.txt');                                         
t=ecg(:,1);
s=ecg(:,2);
title('lowpass filter');
hold on 
fs=100;
[b,a]=butter(1, 5/fs,'Z');  
lowpass=filter(b, a, s);
plot(s)
hold on;
plot(lowpass, 'r')
