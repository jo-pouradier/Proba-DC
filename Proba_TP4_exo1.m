clear varibales; close all;

N = 50000;
a = 3;
b = -2;

exp = zeros(1,N);
for i=1:N
    exp(i) = rand()*(a-b) + b;
end

figure(1); hold on;
he = histogram(exp,'Normalization','pdf');

plot([a,b],[1/(a-b),1/(a-b)], 'b');

%moyenne et equart type
disp(' ');
disp(['moyenne empirique : ',num2str(mean(exp))]);
disp(['moyenne theorique : ', num2str((a-b)/2 +b)]);
disp(['equart type empirique : ', num2str(std(exp))]);
disp(['equart type theorique : ', num2str((a-b)/sqrt(12))]);
disp(' ');
