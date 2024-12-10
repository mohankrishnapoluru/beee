clear;
clc;
close;

s = poly(0, 's');
z = poly(0, 'z');
Omegac = 0.2 * %pi;
H = Omegac / (s + Omegac);
T = 1;

Hz_LPF = horner(H, (2 / T) * ((z - 1) / (z + 1)));
alpha = -(cos((Omegac + Omegac) / 2)) / (cos((Omegac - Omegac) / 2));
Hz_HPF = horner(Hz_LPF, -(z + alpha) / (1 + alpha * z));

HW = frmag(Hz_HPF(2), Hz_HPF(3), 512);
W = 0:%pi / 511:%pi;

plot(W / %pi, HW);
a = gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9;
xgrid(1);
xtitle('Magnitude Response of Single-Pole HPF Filter (Cutoff Frequency = 0.2 * π)', ...
       'Digital Frequency --->', 'Magnitude');

disp("HZ_HPF (High-Pass Filter):");
disp(Hz_HPF);
