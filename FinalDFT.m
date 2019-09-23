clc;
clear all;
close all;
clc;
F1=1000;
F2=2000;
N=4;
fs=8000;
x=[1 2 2 1];
X=zeros(1,N);

for m=0:N-1;
  real=0;
  ima=0;
  for n=0:N-1;
    real=real+(x(n+1)*cos(2*pi*m*n/N));
    ima=ima+(x(n+1)*sin(2*pi*m*n/N));
  endfor
  result1(m+1)=real;
  result2(m+1)=-ima;
endfor

for i=1:N
  X(i)=sqrt((result1(i)*result1(i))+(result2(i)*result2(i)));
endfor
disp(X);

t=0:N-1;
subplot(321)
stem(t,result1)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - real response') 


subplot(322)
stem(t,result2)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - ima response') 

subplot(323)
stem(t,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response') 

y=zeros(1,N);
for i=1:N
  y(i)=atan(result2(i)/result1(i));
endfor

subplot(324)
stem(t,y);
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')


subplot(325)
stem(t,x);
xlabel('Frequency');
ylabel('x(k)');
title('Frequency domain - sinnal response')