clear variables; close all;


loi = 'bi';

N = 10000;
p = 0.33;
n = 20;
X = zeros(1,N);

switch loi
    case 'u'
        for i = 1:N
            X(i) = loi_uniforme(n);
        end
        
        figure(1);hold on;
        hX = histogram(X,'Normalization', 'probability');
        probaU = ones(n) * 1/n;
        bar(probaU,0.3,'y');
        disp(['Eperance theo : ' , num2str((n+1)/2) , ';  Esperance emph : ', num2str(mean(X))]);
        
    case 'be'
        for i = 1:N
            X(i) = loi_bernoulli(p);
        end
        figure(1);hold on;
        hX = histogram(X,'Normalization', 'probability');
        title('loi bernoulli');
        probaBer = [(1-p),p];
        bar([0,1],probaBer,0.3,'y');
        disp(['Eperance theo : ' , num2str(p) , ';  Esperance emph : ', num2str(mean(X))]);
        
    case 'bi'
        for i = 1:N
            X(i) = loi_binomiale(n,p);
        end
        
        figure(1); hold on;
        hX = histogram(X,'Normalization', 'probability');
        title('loi binomiale');
        probaBi = zeros(1,n);
        for i = 0:n
            probaBi(i+1) = nchoosek(n,i)* (p^i)* (1-p)^(n-i);
        end
        bar(1:1:n,probaBi,0.3,'y')
        
        
        
        
           
end

       
        
        