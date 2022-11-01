%% Tema 1
N = 10;
n = 0:N-1;
imp_unit = eye(1,N);
tr_unit = ones(1,N);
alpha = 3;
e = alpha.^n;
w = 1; phi = 0;
sin_real = sin(w*n +phi);
j = sqrt(-1);
sin_compelx = exp(j*(w*n + phi));

%% Tema 2a 

[y_sunet_a ,Fs_a] = audioread("sunet_a.au");
[y_sunet_i, Fs_i] = audioread("sunet_i.au");
[y_sunet_s, Fs_s] = audioread("sunet_s.au");
[y_xilo,Fs_xilo] = audioread("xilo.au");

% Timp sunet
T_a = length(y_sunet_a) / Fs_a;
T_i = length(y_sunet_i) / Fs_i;
T_s = length(y_sunet_s) / Fs_s;
T_xilo = length(y_xilo) / Fs_xilo;

%% Tema 2b
plot_2b(pi/3,1,13);

function x = esantion(omega,Ts,M)
    n = 0:Ts:M-1;
    x = sin(omega*n);
end

function plot_2b(omega,Ts,M)
    dt = 0.001;
    t = 0:dt:M-1;
    plot(t,sin(omega*t),'--');
    hold on;
    sin_x = esantion(omega,Ts,M);
    n = 0:Ts:M-1;
    stem(n,sin_x);
end




