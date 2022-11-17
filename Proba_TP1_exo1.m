clear variables; close all;

LancerDeSixFaces = @(n)(randi(6,1,n));

X = LancerDeSixFaces(10000);
%figure(1);
%histogram(X,'Normalization', 'probability');

nbr_test = 10000;
reussite = 0;
for i = 1:nbr_test
    X = LancerDeSixFaces(4);
    if (max(X)==6)
        reussite = reussite + 1;
    end
end

prob_theo = 1-(5/6)^4;
prob_emp = reussite/nbr_test;

disp('===Test 4 lancer de 1 des===');
disp(['proba theorique : ', num2str(prob_theo)]);
disp(['proba emp : ', num2str(prob_emp)]);
disp(' ')

%% lancer 24 fois deux dés:

LancerDeSixFaces = @(n)(randi(6,1,n));
nbr_test = 10000;
reussite = 0;

for i = 1:nbr_test
    X = LancerDeSixFaces(24);
    Y = LancerDeSixFaces(24);
    if (max(X+Y)==12)
        reussite = reussite + 1;
    end
end

prob_theo = 1- (35/36)^24;
prob_emp = reussite/nbr_test;

disp('===Test 24 lancer de 2 des===');
disp(['proba theorique : ', num2str(prob_theo)]);
disp(['proba emp : ', num2str(prob_emp),]);
disp(' ')
