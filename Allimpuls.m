t=-2:1:2;
y=[zeros(1,2), ones(1,1), zeros(1,2)];
subplot(2,2,1);
stem(t,y);
ylabel('d(n)');
xlabel('unit impulse');


n=5;
%n=input('Enter n values');
t=0:1:n-1;
y1=ones(1,n);
subplot(2,2,2);
stem(t,y1);
ylabel('Amplitude');
xlabel('unit step');
axis([-2 n-1 0 2]);
 
 
%n=input('Enter n values');
t=0:1:n-1;
subplot(2,2,3);
stem(t,t);
ylabel('Amplitude');
xlabel('unit ramp');


a=2; 
%n=input('Enter length of exponential seq');
t=0:1:n-1;
%a=input('Enter a value');
y2=exp(a*t);
subplot(2,2,4);
stem(t,y2);
xlabel('Exponential fun');
ylabel('Amplitude');