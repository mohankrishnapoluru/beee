//UNIT IMPULSE SIGNAL
clear all;
close all; 
N = 5; 
t1 = -5:5;
x1 = [zeros(1, N), 1, zeros(1, N)];
subplot(2, 3, 1);
plot(t1, x1);
xlabel('time');
ylabel('Amplitude');
title('Unit Impulse Signal');

//UNIT STEP SIGNAL
t2 = -5:5;
x2 = [zeros(1, N), ones(1, N+1)];
subplot(2, 3, 2);
plot(t2, x2);
xlabel('time');
ylabel('Amplitude');
title('Unit Step Signal');

//EXPONENTIAL SIGNAL
t3 = 0:1:20;
x3 = exp(-t3);
subplot(2, 3, 3);
plot(t3, x3);
xlabel('time');
ylabel('Amplitude');
title('Exponential Signal');

//UNIT RAMP SIGNAL
t4 = 0:20;
x4 = t4;
subplot(2, 3, 4);
plot(t4, x4);
xlabel('time');
ylabel('Amplitude');
title('Unit Ramp Signal');

//SINUSOIDAL SIGNAL
t5 = 0:0.04:1;
x5 = sin(2 * %pi * t5);
subplot(2, 3, 5);
plot(t5, x5);
xlabel('time');
ylabel('Amplitude');
title('Sinusoidal Signal');

//RANDOM SIGNAL
t6 = -10:1:20;
x6 = rand(1, length(t6));
subplot(2, 3, 6);
plot(t6, x6);
xlabel('time');
ylabel('Amplitude');
title('Random Signal');
