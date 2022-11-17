clear variables, close all;

figure(1);hold on;

%empirique
n = 50000;
Y = rand(n,1);
X = -4 + exp(1).^(log(6)*Y);
hX= histogram(X, 'Normalization', 'pdf');

%theorique
t = linspace(2,-3, 1000);
x_th = 1/log(6) * 1./(t + 4);
plot(t,x_th, 'b');

%Moyenne et equart type
disp(' ');
disp(['moyenne empirique : ',num2str(mean(X))]);
disp(['moyenne theorique : ', num2str((5-4*log(6))/log(6))]);
disp(['equart type empirique : ', num2str(std(X))]);
disp(['equart type theorique : ', num2str(5*(7/2-5/log(6))/log(6))]);
disp(' ');

%% Partie 2
clear variabes; close all;
figure(2); hold on;

%empirique
N = 100000;
Y1 = rand(N,1)*0.5;
Y2 = rand(N,1)*0.5 + 0.5;
X1 = sqrt(8*Y1);
X2 = -sqrt(8*(1-Y2)) +4;
X = [X1; X2];
hX = histogram(X,'Normalization','pdf');

%theorique
plot([0,2,4], [0,0.5,0], 'b')

%moyenne, equart type
disp(' ');
disp(['moyenne empirique : ',num2str(mean(X))]);
disp(['moyenne theorique : ', num2str(2)]);
disp(['equart type empirique : ', num2str(std(X))]);
disp(['equart type theorique : ', num2str(0.8164)]);
disp(' ');


