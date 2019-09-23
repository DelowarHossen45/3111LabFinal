clear;
T=5;
fs=100;
F=1;
A=5;
 t=0:1/fs:T;
  xa=A*cos(2*3.14*F*t);
  subplot(2,1,1);
  plot(t,xa);
  %stem(t,xa);
  title('analog signal');
  grid on 
set(gca,'xtick',[0:1:T])
%clcset(gca,'ytick',[-6:1:6])
  
  %discrete signal;
  N=10;
  A=5;
  F=5;
  fs=20;
  n=0:(1/fs):N-1;
  xn=A*cos(2*3.14*(F/fs)*n);
  subplot(2,1,2);
  stem(n,xn);
  title('discrete signal');

grid on 
set(gca,'xtick',[0:1:N])
%set(gca,'ytick',[-2:1:2])