// First Order Butterworth Low Pass Filter
clear;
clc;
close;
s = poly(0, 's');
z = poly(0, 'z'); 
Omegac = 0.2 * %pi;
H = Omegac / (s + Omegac);
T = 1;
Hz = horner(H, (2 / T) * ((z - 1) / (z + 1)));
HW = frmag(Hz(2), Hz(3), 512);
W = 0:%pi / 511:%pi;
plot(W / %pi, HW);
a = gca(); // Get current axes
a.thickness = 3; // Line thickness
a.foreground = 1; // Foreground color
a.font_style = 9; // Font style for labels
xgrid(1); // Enable grid
xtitle('Magnitude Response of Single-Pole LPF Filter (Cutoff Frequency = 0.2 * π)', ...
       'Digital Frequency --->', 'Magnitude');
disp("Hz (Digital Filter):");
disp(Hz);
