%%% Author : Nae Sebastian
%%% Grupa : 332AC
%% TEMA 1 -  TF unei sinusoide complexe cu suport finit
ng = 4;
ns = 11;
dt = 0.01;
j = sqrt(-1);

[omega0,M] = PS_Lab_2_Tema_1(ng,ns);

omega = -pi:dt:pi;
n = 0:dt:M-1;

x = exp(j*omega0*n');
X = fft(x);
% X = freqz(x,1,omega);
% plot(omega,abs(X));
%% TEMA 1 - c

%% TEMA 2 - Sinusoida reala cu suport finit - a
phi = PS_Lab_2_Tema_2(ng,ns);
xn = cos(omega0*n + phi);
t = -pi:dt:pi;
X = freqz(xn, 1, t);
plot(t,abs(X));
%% TEMA 2 - Sinusoida reala cu suport finit - b
%% TEMA 2 - Sinusoida reala cu suport finit - c
factori = [0.3 0.7 1 1.2 1.5];

for i=1:length(factori)
    new_phi = factori(i) * phi;
    xn = cos(omega0*n+new_phi);
    X = freqz(xn,1,t);
    figure(i);
    plot(t,abs(X));
    title("Spectru cu phi: " + new_phi);
end