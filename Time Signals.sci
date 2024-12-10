//UNIT IMPULSE SIGNAL
clear all;
close all; // Close all previous figures
N = 5; // Set limit
t1 = -5:5;
x1 = [zeros(1, N), 1, zeros(1, N)];
subplot(2, 3, 1); // Adjusted to fit six plot2d3s
plot2d3(t1, x1);
xlabel('time');
ylabel('Amplitude');
title('Unit Impulse Signal');

//UNIT STEP SIGNAL
// Define the time vector
t = -10:0.1:10; // From -10 to 10 with step size of 0.1

// Initialize the unit step signal
u = zeros(size(t)); // Create a zero array of the same size as t

// Assign 1 for t >= 0
u(find(t >= 0)) = 1; // Set values to 1 where t >= 0

// Plot the unit step signal
plot(t, u, 'b', 'LineWidth', 2);
xlabel("Time (t)");
ylabel("Amplitude");
title("Unit Step Signal");
xtitle("Unit Step Signal");
grid on;

//EXPONENTIAL SIGNAL
t3 = 0:1:20;
x3 = exp(-t3);
subplot(2, 3, 3);
plot2d3(t3, x3);
xlabel('time');
ylabel('Amplitude');
title('Exponential Signal');

//UNIT RAMP SIGNAL
t4 = 0:20;
x4 = t4;
subplot(2, 3, 4);
plot2d3(t4, x4);
xlabel('time');
ylabel('Amplitude');
title('Unit Ramp Signal');

//SINUSOIDAL SIGNAL
t5 = 0:0.04:1;
x5 = sin(2 * %pi * t5);
subplot(2, 3, 5);
plot2d3(t5, x5);
xlabel('time');
ylabel('Amplitude');
title('Sinusoidal Signal');

//RANDOM SIGNAL
t6 = -10:1:20;
x6 = rand(1, length(t6));
subplot(2, 3, 6);
plot2d3(t6, x6);
xlabel('time');
ylabel('Amplitude');
title('Random Signal');
