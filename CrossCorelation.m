clc;
clear all;
x=[1 2 3 4];
y=[2 3 4 5];
y=fliplr(y);
L1=length(x);
L2=length(y);
m=L1+L2-1;
z=zeros(1,m);
xn=[x,zeros(1,L2-1)];
yn=[y,zeros(1,L1-1)];

for i=1:m;
  for j=1:i;
    z(i)=z(i)+xn(j)*yn(i-j+1);
  endfor
 endfor
disp(z);
t=-3:m-4;
subplot(311);
stem(t,xn);
subplot(312);
stem(t,yn);

subplot(313);
stem(t,z);

