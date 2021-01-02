%%
% Alexandria University - Faculty of Engineering
% Electrical and Electronic Engineering Department - Fourth Year - Communications & Electronics
%
% Course: Antenna Lab
% Patch Antenna
%
% Name    : Mahmoud Mohamed Kamal Ismail - Mahmoud AbdElHady Mahmoud - Ahmed Mohamed Abdelakher
% Section : 7                            - 7                         - 1
% Seat No.: 250                          - 248                       - 37

%%
clear; 
close all; 
clc;

%% Create and view a microstrip patch with specified parameters.
pm = patchMicrostrip('Length',75e-3, 'Width',37e-3,                 ...
        'GroundPlaneLength',120e-3, 'GroundPlaneWidth',120e-3);
pm.Height = 0.01;
pm
figure(1);
show(pm);

%% Plot the radiation pattern of the antenna at a frequency of 1.67 GHz.
figure(2);
pattern(pm,1.67e9);

%% Calculate and plot the impedance of the antenna over the specified frequency range.
figure(3);
impedance(pm,linspace(0.5e9,2e9,50));

%% Patch Antenna Array
a = linearArray;
a.Element        = pm;
a.ElementSpacing = 0.1;
a.NumElements    = 4;
figure(4);
layout(a);
figure(5);
pattern(a,1.67e9);

%% Create a microstrip patch antenna using 'FR4' as the dielectric substrate.
d  = dielectric('FR4');
pm = patchMicrostrip('Length',75e-3,'Width',37e-3,     ...
        'GroundPlaneLength',120e-3,'GroundPlaneWidth',120e-3, ...
        'Substrate',d)
figure(6);
show(pm);