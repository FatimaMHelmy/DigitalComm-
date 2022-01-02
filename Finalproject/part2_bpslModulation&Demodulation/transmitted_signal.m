clc ;
clear all ;
data= randi([0 1],4,1);
data=data*2-1; % to make it polar 
%% for test skip it 
%t=0:0.01:1;
%k=length(data);
%tb=0:0.01:(1/k);
%exdata=[];
%for (i=1:length(data))
   % for (j=1:length(tb)-1)
      %  exdata=[exdata data(i)]
   % end    
        
    
%end 
%exdata=[exdata exdata(end)]
%length(exdata)
%plot(t,0.5.*exdata)
%%
f=100; 
fs=f*10; 
Ts=1/fs;
T=1/f;
M=10; 
n=M*length(data);
t=0:Ts:n*T; % total peripd of signal
carr=0.5.*sin (2*pi*f*t);
subplot(4,1,1);
stem(data);
grid on 
subplot(4,1,2);
plot(carr);
grid on 
%% convert pulse into square 
tp=0:Ts:T*M;  %% period of carrier
squared_data=[];
for (i=1:length(data))
    for (j=2:length(tp))
        squared_data=[squared_data data(i)]; % to handle the range 
    end 
end 
subplot(4,1,3);
squared_data=[squared_data squared_data(end)]
plot(squared_data);
grid on 
%% mod 
bpsk=carr.*squared_data;
subplot(4,1,4);
plot(bpsk);
        



