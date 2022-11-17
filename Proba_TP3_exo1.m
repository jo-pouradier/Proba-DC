clear variables; close all;

n_cases=24;
n_impacts = 1500;
cx=[0:n_cases];
cy=[0:n_cases];
[CX,CY]=meshgrid(cx,cy);
figure(1);
mesh(CX,CY,zeros(n_cases+1,n_cases+1));

M = zeros(n_cases);

for i=1:n_impacts
    pos = randi(n_cases, 2,1);
    M(pos(1,1),pos(2,1)) = M(pos(1,1),pos(2,1)) + 1;
end
N = M(:);

figure(2);hold on;

hM = histogram(N) ;
disp(['Moyenne : ', num2str(mean(N))]);
disp(['Equart type : ', num2str(std(N))]);

k = 0:1:max(N);
L = n_impacts * 1/(n_cases^2);
Pk = (L.^k)./(factorial(k)) * exp(-L) * n_cases^2;
disp(['Moyenne théorique: ', num2str(L)]);
disp(['Equart type théorique: ', num2str((L^(1/2)))]);
bar(k,Pk,'g');



