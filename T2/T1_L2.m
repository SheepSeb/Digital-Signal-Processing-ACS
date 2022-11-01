ng = 4;
ns = 11;
dt = 0.01;
j = sqrt(-1);

[omega0,M] = PS_Lab_2_Tema_1(ng,ns);

omega = -pi:dt:pi;
n = 0:dt:M-1;

x = exp(j*omega0*n);
X_w = x * exp(-j*n'*omega);
X = freqz(x,1,omega);
X_fft = fft(x);

tf_x = @(w) abs(sin(((w-omega0)*M)/2) / (sin((w-omega0)/2))); 
Xw = tf_x(omega);

max_spect = max(max(X_fft));
max_spect2 = max(max(X));


