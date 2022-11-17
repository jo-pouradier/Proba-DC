clear variables; close all;


k = [3,4,5,6,7,8];
PXk = [4 ,1 , 3, 7, 2, 3] .* 1/20;

figure(1);hold on;

subplot(311);
bar(k,PXk);
title('k valeur X');

mu = k*PXk';
disp(['moyenne : ',num2str(mu)]);

variance = k.^2 * PXk' - mu^2;
sig = sqrt(variance);
disp(['ecart type : ', num2str(sig)]);


%% calcul produit de convolution

resConv = conv(PXk,PXk);
k2 = 6:16;
subplot(312);
bar(k2,resConv);
title('k valeurs de X1+X2');

%% somme de n v.a.

n = 15;
res = PXk;
for i=1:n-1
    res = conv(res,PXk);
end
k3 = (n)*min(k):1:(n)*max(k);

subplot(313);hold on;
bar(k3,res);

disp(' ');
mu2 = k3*res';
disp(['moyenne : ',num2str(mu2)]);
variance2 = k3.^2 * res' - mu2^2;
sig2 = sqrt(variance2);
disp(['ecart type : ', num2str(sig2)]);
disp(' ');

%% affichage de la densité de la loi normale

N = 10000;
x = (mu2-5*sig2):1:(mu2 + 5*sig2);
loi_ns = 1/(sig2*sqrt(2*pi)) * exp(-(x-mu2).^2/(2*sig2^2));
plot(x,loi_ns,'b', 'linewidth', 2); 



