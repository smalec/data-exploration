clc
clear

results = zeros(1, 10000);
for i = 1 : 10000
    prize = randi(3, 1);
    choice = randi(3, 1);
    noPrizeAndChoice = setdiff([1:3], [prize choice]);
    if size(noPrizeAndChoice) == 1
        showGate = noPrizeAndChoice;
    else
        showGate = randsample(noPrizeAndChoice, 1);
    end
    updateChoice = setdiff([1:3], [choice showGate]);
    results(i) = updateChoice == prize;
end
histogram(results);