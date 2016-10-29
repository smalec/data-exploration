clear
clc

did_win = zeros(1, 10000);
for i = 1: 10000
   car_door = randi(3);
   player_choice = randi(3);
   did_win(i) = car_door == player_choice;
end
sum(did_win) / 10000
   
did_win = zeros(1, 10000);
for i = 1: 10000
   car_door = randi(3);
   player_choice = randi(3);
   
   to_open = setdiff([1, 2, 3], [car_door, player_choice]);
   goat = datasample(to_open, 1);
   
   changed_choice = setdiff([1, 2, 3], [player_choice, goat]);
   did_win(i) = changed_choice == car_door;
end
sum(did_win) / 10000
