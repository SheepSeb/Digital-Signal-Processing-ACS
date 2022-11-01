ng = 4;
ns = 11;

[w_0,N] = PS_Lab_2_Tema_1(ng,ns);
phi = PS_Lab_2_Tema_2(ng,ns);

dt = 0.01;
w = -pi:dt:pi;
n = 0:dt:N-1;

x  = cos(w_0*n + phi);
X = freqz(x,1,w);

plot(w,abs(X));
title("Spectru Semnal cu phi")

% Forma graficului este simetrica fata de axa Oy justificand astfel
% simetria.

values = [0.3 0.7 1 1.2 1.5];
for i=1:length(values)
    phi_amp = phi * values(i);
    x = cos(w_0*n + phi_amp);
    X = freqz(x,1,w);
    figure(i);
    plot(w,abs(X));
    title("Spectru semnal ,Phi cu valoarea de " + phi_amp + " inmultit cu valoarea de" + values(i));
end