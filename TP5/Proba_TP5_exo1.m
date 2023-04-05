clear variables; close all;

N = 50000;
U1 = rand(N,1);
U2 = rand(N,1);

%% 1) X,Y suivent des lois centrees reduites

X = sqrt((-2).*log(U1)) .* cos(2*pi*U2);
Y = sqrt((-2).*log(U1)) .* sin(2*pi*U2);

figure(1); hold on;
hX = histogram(X,'Normalization','pdf');
hY = histogram(Y,'Normalization','pdf');

x = min(X):0.01:max(X);
loi_ncr = 1/(sqrt(2*pi)) * exp(-x.^2/2);
plot(x,loi_ncr,'b', 'linewidth', 2); 

%moyenne et equart type
disp(' ');
disp(['moyenne empirique de X : ',num2str(mean(X))]);
disp(['moyenne theorique : ', num2str(0)]);
disp(['equart type empirique de X: ', num2str(std(X))]);
disp(['equart type theorique : ', num2str(1)]);
disp(' ');

%% simulation d'une loi normal de prarametres quelconques

prompt = "moyenne : ";
mu = input(prompt);
prompt = "sigma : ";
sig = input(prompt);

X = X *sig + mu;
Y = Y*sig + mu;

figure(2); hold on;
hX = histogram(X,'Normalization','pdf');
hY = histogram(Y,'Normalization','pdf');

x = min(X):0.01:max(X);
loi_ncr = 1/(sig*sqrt(2*pi)) * exp(-(x-mu).^2/(2*sig^2));
plot(x,loi_ncr,'b', 'linewidth', 2); 

disp(' ');
disp(['moyenne empirique de X : ',num2str(mean(X))]);
disp(['moyenne theorique : ', num2str(mu)]);
disp(['equart type empirique de X: ', num2str(std(X))]);
disp(['equart type theorique : ', num2str(sig)]);
disp(' ');

