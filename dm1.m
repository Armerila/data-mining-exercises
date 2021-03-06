%
%
opengl software
%Numbers from 1 to 100.
t1=1:100;
t2=100:-1:1;
t3=1:2:100;
t=t1;

%Dimensions of "Matrix t". Even a scalar is matrix in Matlab (Matrix laboratory)
l=length(t);
d=size(t);

%Transpose of t.
tp=t';
size(tp);

%100 samples from 50Hz sinusoidal signal sampled at frequency of 8192Hz.
f=50;
F=8192;
y=sin(2*pi*t*(f/F));
plot(t,y);

%Another signal into the same plot.

y2=cos(2*pi*t*(f/F));

sect = find(abs(y-y2)<=(0.05))

%Legends to the graphs.
plot(t,y)
hold on
plot(t,y2,'g')
xlabel('Time instant');
ylabel('Amplitude')
legend('Sine','Cosine');
plot(xi,yi,'o')


%difference of signals y and y2.
d1=y2-y;
plot(d1);