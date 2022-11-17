clear variables; close all;

nbr_exp = 10000;
cpt = 0;
X = rand(2,nbr_exp);
t= linspace(0,1,100);
cercle = sqrt(1-t.^2);
ptg = [,];
ptr = [,];

for i=1:nbr_exp
   if (X(1,i)^2 + X(2,i)^2 <=1)
       cpt = cpt + 1;
       ptg = [ptg , [X(1,i) ; X(2,i)]];
   else
       ptr = [ptr , [X(1,i) ; X(2,i)]];
   end
end

prob_theo = pi;
prob_emp = (cpt/nbr_exp) * 4;

disp('===fleches sur une cible===');
disp(['proba theorique : ', num2str(prob_theo)]);
disp(['proba emp : ', num2str(prob_emp),]);
disp(' ')

figure(1); hold on;
title('Méthode de MONTE-CARLO')

plot(ptg(1,:), ptg(2,:),'+green');    
plot(ptr(1,:), ptr(2,:),'+red');
%plot(X,Y, '.');
plot (t, cercle, 'black');


%% Integrale
clear variables; close all;

nbr_exp = 10000;
cpt = 0;
X = zeros(2,nbr_exp);
X(1,:) = 1 + (exp(1)-1)*rand(1,nbr_exp);
X(2,:) = 0 + 0.25 * rand(1,nbr_exp);  
t= linspace(1,exp(1),1000);
courbe = log(t)./(t.^2);
ptg = [,];
ptr = [,];

for i=1:nbr_exp
   if (log(X(1,i))/X(1,i)^2 <= X(2,i))
       cpt = cpt + 1;
       ptg = [ptg , [X(1,i) ; X(2,i)]];
   else
       ptr = [ptr , [X(1,i) ; X(2,i)]];
   end
end

prob_theo = 1-2/exp(1);
prob_emp = cpt/nbr_exp *0.25*(exp(1)-1);

disp('===fleches sur une courbe===');
disp(['proba theorique : ', num2str(prob_theo)]);
disp(['proba emp : ', num2str(prob_emp),]);
disp(' ')

figure(1); hold on;
title('Méthode de MONTE-CARLO')
plot(ptg(1,:), ptg(2,:),'+green');    
plot(ptr(1,:), ptr(2,:),'+red');
plot (t, courbe, 'black');















