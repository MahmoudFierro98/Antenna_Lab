%%
% Alexandria University - Faculty of Engineering
% Electrical and Electronic Engineering Department - Fourth Year - Communications & Electronics
%
% Course: Antenna Lab
% Lab 1
%
% Name    : Mahmoud Mohamed Kamal Ismail
% Section : 7
% Seat No.: 250

%%
clear, clc;

%% Part (1): Relation between received power & distance bet antennas (r) 
%  Practical
r_cm  = [30 40 50 60 70];
s_dB  = [-30 -32.5 -34.25 -37 -39];
PL_dB = abs(s_dB-s_dB(1));

figure(1);
plot(r_cm,PL_dB)
title('Part (1): Relation between received power & distance bet antennas (r) - Practical','fontsize',10)
xlabel('r (cm)','fontsize',10);
ylabel('|P.L| (dB)','fontsize',10);

% Theoretical
r1_cm = 30;
r2_cm = [30 40 50 60 70 80 90 100];
PL_dB = 20*log10(r2_cm./r1_cm);

figure(2);
plot(r2_cm,PL_dB)
title('Part (1): Relation between received power & distance bet antennas (r) - Theoretical','fontsize',10)
xlabel('r (cm)','fontsize',10);
ylabel('|P.L| (dB)','fontsize',10);

%% Part (3): Sketch Antenna Pattern

theta_rad = [-70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70].*(pi/180);
PR_dB     = [-52.7 -52.6 -52.5 -52 -49 -40 -33 -30 -33.5 -38 -43 -50.2 -52 -52.2 -52.3];
PR_linear = db2mag(PR_dB.*2); % OR PR_linear = 10.^(PR_dB/10);
PR_linear = PR_linear./PR_linear(8);

figure(3);
polar(theta_rad,PR_linear)
title('Part (3): Sketch Antenna Pattern','fontsize',10)