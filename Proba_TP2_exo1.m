clear variables; close all;


n = 8;
N = 10000;
X = zeros(1,N);

for i=1:N
    a=randi(n,1,1);
    b=randi(n,1,1);
    while a == b
        b = randi(n,1,1);
    end
    
    X(1,i) = min(a,b);
end

figure(1); hold on;
hX = histogram(X,'Normalization', 'probability');
title('Probability');

k = 1:n-1;
Pk = (2*(n-k))/(n*(n-1));
bar(Pk, 0.5, 'w');