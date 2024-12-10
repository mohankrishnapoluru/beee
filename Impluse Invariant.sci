clear;
clc;
close;

s = %s;
T = 0.2;
HS = 10 / (s^2 + 7 * s + 10);
elts = pfss(HS);
disp("Factorized HS = ");
disp(elts);
p1 = -5;
p2 = -2;
z = %z;
HZ = T * ((-3.33 / (1 - %e^(p1 * T) * z^(-1))) + (3.33 / (1 - %e^(p2 * T) * z^(-1))));
disp("HZ = ");
disp(HZ);
