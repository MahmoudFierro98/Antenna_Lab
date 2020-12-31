%%
% Alexandria University - Faculty of Engineering
% Electrical and Electronic Engineering Department - Fourth Year - Communications & Electronics
%
% Course: Antenna Lab
% Antenna Lab Assignment-2
%
% Name    : Mahmoud Mohamed Kamal Ismail - Mahmoud AbdElHady Mahmoud - Ahmed Mohamed Abdelakher
% Section : 7                            - 7                         - 1
% Seat No.: 250                          - 248                       - 37

%%
clear; 
close all; 
clc;

%% Part (1): linear antenna (dipole of general length)
fprintf('linear antenna (dipole of general length)\n');
Lambda = 1;
B      = (2*pi)/Lambda;
Theta  = linspace(-pi,pi,350);
Phi    = linspace(-2*pi,2*pi,350);
L      = input('enter the length of dipole relative to lambda l = ');
while L < 0
    fprintf('ERROR :: "l < 0"\n');
    L  = input('enter the length of dipole relative to lambda (l>=0) l = ');
end
L      = L * Lambda;
En     = abs((cos(((B*L)/2).*cos(Theta)) - cos((B*L)/2)) ./ sin(Theta));

figure(1); 
polar(Theta,En);
view([90 90]);
title('The 2D pattern of the dipole');

Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta);
En_3D    = meshgrid(En);
X        = En_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = En_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z        = En_3D.*cos(Theta_3D);

figure(2); 
surf(X,Y,Z);
shading interp;
axis vis3d;
axis equal;
lighting gouraud;
title('The 3D pattern of the dipole');

fprintf('-------------------------------------------------------------\n');

%% Part (2): Uniform linear antenna array(ULA)
fprintf('Uniform linear antenna array(ULA)\n');
Lambda    = 1;
B         = (2*pi)/Lambda;
d         = input('enter the spacing w.r.t lambda d = ');
while d < 0
    fprintf('ERROR :: "d < 0"\n');
    d     = input('enter the spacing w.r.t lambda (d>=0) d = ');
end
d         = d * Lambda;
N         = input('enter number of elemente N = ');
while N < 0
    fprintf('ERROR :: "N < 0"\n');
    N     = input('enter number of elemente (N>=0) N = '); % If N = 0 there's no array
end
alpha     = input('the progressive phase shift alpha = ');
max_angle = acos(-alpha/(B*d));
Gamma     = linspace(-pi,pi,6000);
Phi       = linspace(-2*pi,2*pi,6000);
ebsi      = B*d*cos(Gamma) + alpha;
AF        = abs(sin((N*ebsi)/2) ./ (N * sin(ebsi/2)));

figure(1); 
plot(ebsi,AF);
title('array factor vs ebsi');
xlabel('ebsi','fontsize',10);
ylabel('AF','fontsize',10);

figure(2); 
polar(Gamma,AF);
view([90 90]);
title('The 2D pattern of the array');

Phi_3D   = meshgrid(Phi);
Gamma_3D = meshgrid(Gamma);
AF_3D    = meshgrid(AF);
X        = AF_3D.*sin(Gamma_3D).*cos(Phi_3D'); 
Y        = AF_3D.*sin(Gamma_3D).*sin(Phi_3D'); 
Z        = AF_3D.*cos(Gamma_3D);

figure(3); 
surf(X,Y,Z);
shading interp;
lighting gouraud;
title('The 3D pattern of the array');

fprintf('-------------------------------------------------------------\n');

%% Part (3): Nonuniformly-Fed linear antenna array 
%  A. Binomial Arrays
Lambda = 1;
B      = (2*pi)/Lambda;
d      = input('enter the spacing w.r.t lambda d = ');
while d < 0
    fprintf('ERROR :: "d < 0"\n');
    d     = input('enter the spacing w.r.t lambda (d>=0) d = ');
end
d         = d * Lambda;
N         = input('enter number of elemente N = ');
while N < 0
    fprintf('ERROR :: "N < 0"\n');
    N     = input('enter number of elemente (N>=0) N = '); % If N = 0 there's no array
end
alpha  = input('the progressive phase shift alpha = ');
Theta  = linspace(-pi,pi,6000);
Phi    = linspace(-2*pi,2*pi,6000);
u      = (B*d*cos(Theta) + alpha)/2;
AF     = abs(cos(u).^(N-1));

figure(1); 
plot(u,AF);
title('array factor vs u');
xlabel('u','fontsize',10);
ylabel('AF','fontsize',10);

figure(2); 
polar(Theta,AF);
view([90 90]);
title('The 2D pattern of the array');

Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta);
AF_3D    = meshgrid(AF);
X        = AF_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = AF_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z        = AF_3D.*cos(Theta_3D);

figure(3); 
surf(X,Y,Z);
shading interp;
axis vis3d;
axis equal;
lighting gouraud;
title('The 3D pattern of the array');

fprintf('-------------------------------------------------------------\n');

%% Part (3): Nonuniformly-Fed linear antenna array 
%  B. Dolph-Tschebysceff Arrays
Lambda = 1;
B      = (2*pi)/Lambda;
d      = input('enter the spacing w.r.t lambda d = ');
while d < 0
    fprintf('ERROR :: "d < 0"\n');
    d  = input('enter the spacing w.r.t lambda (d>=0) d = ');
end
d      = d * Lambda;
N      = input('enter number of elemente N = ');
while N < 0
    fprintf('ERROR :: "N < 0"\n');
    N  = input('enter number of elemente (N>=0) N = '); % If N = 0 there's no array
end
M      = N - 1;
alpha  = input('the progressive phase shift alpha = ');
Ro     = input('Mainlobe to sidelobe level Ro = ');
while Ro <= 1
    fprintf('ERROR :: "Ro < 1"\n');
    Ro = input('Mainlobe to sidelobe level (Ro>1) Ro = '); 
end
Zo     = cosh((1/M)*acosh(Ro));
Z      = linspace(-Zo,Zo,6000);
u_up   = acos(Z./Zo);
u_down = -u_up;
u      = [u_down ; u_up];
Theta1 = acos(((2.*u_down)-alpha)/(B*d));
Theta2 = -Theta1;
Phi    = linspace(-2*pi,2*pi,6000);
AF     = abs(cosh(M.*acosh(Z)));

figure(1); 
plot(Z,AF);
title('array factor vs Z');
xlabel('Z','fontsize',10);
ylabel('AF','fontsize',10);

figure(2); 
polar(Theta1,AF,'-b');
hold on;
polar(Theta2,AF,'-b');
view([90 90]);
title('The 2D pattern of the array');

Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta1);
AF_3D    = meshgrid(AF);
X        = AF_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = AF_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z_       = AF_3D.*cos(Theta_3D);

figure(3); 
surf(X,Y,Z_);
shading interp;
axis vis3d;
axis equal;
lighting gouraud;
title('The 3D pattern of the array');

fprintf('-------------------------------------------------------------\n');