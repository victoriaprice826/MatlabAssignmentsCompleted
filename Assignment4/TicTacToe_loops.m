%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: Victoria Price
% Date: 9/28/16
% Description: Interactive tic-tac-toe game with the computer. With use
% of loops. Computer is 'X', player is 'O'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Welcome message
Again=1; 
while Again == 1;
clear all; clc;
welcomeMsg = msgbox({'Welcome to the most epic tic-tac-toe game of your life', 'Prepare to be destroyed'});
waitfor(welcomeMsg);
disp('Let''s get started!')

%% Game Boards
Board = num2cell([1:3;4:6;7:9]);
disp (Board)
NumericBoard = zeros(3);    %hidden board, used for finding winner

%% Move variables with temp holding values pm= player move, cm= comp move
cm1 = 23; cm2 = 33; cm3 = 43; cm4 = 53; 
pm1= 32; pm2= 34; pm3= 35; pm4= 36;

%% Computer's first move (player 1 is computer)
disp ('Me first!')
pause (2)
player=1;

spots = 1:9;           %available spots on board
taken = [cm1 pm1];     %taken spots
S = setdiff(spots,taken);  %exclude taken in spots available
cm1 = S(randi(numel(S),1,1));  %choose random available spot
move=cm1;

%show board
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);
clc
disp(Board)

%% Prompt for user to move (player 2 is human)
player= 2;
prompt= 'Pick an available numbered space\nthen press enter.\n';
pm1= input(prompt);
move = pm1;
% validate move
x=0;
for i = 1:3
    illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4);
    if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm1= input(prompt2);
    move = pm1;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm1= randi([2,9]);
        move=pm1;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm1= randi([2,9]);
        move=pm1;
        break;
    end
elseif illegalmove == 0;        %legal move
    break
else
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm1= input(prompt2);
    move = pm1;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm1= randi([2,9]);
        move=pm1;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm1= randi([2,9]);
        move=pm1;
        break;
    end
 end
 end
end
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);

%show board
clc
disp(Board)         %updated board

%% Computer's 2nd move 
disp ('My turn again...')
pause (2)
player=1;

 spots = 1:9;           %available spots on board
 taken = [cm1 pm1];     %taken spots
 S = setdiff(spots,taken);  %exclude taken in spots available
 cm2 = S(randi(numel(S),1,1));  %choose random available spot
 
move=cm2;
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);   
%show board
clc 
disp (Board)             %updated board

%% Prompt for users 2nd move (player 2 is human)
player= 2;
prompt= 'Pick an available numbered space\nthen press enter.\n';
pm2= input(prompt);
move = pm2;
% validate move
for i = 1:3
    illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4);
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm2= input(prompt2);
    move = pm2;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm2= randi([2,9]);
        move=pm2;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm2= randi([2,9]);
        move=pm2;
        break;
    end
elseif illegalmove == 0;        %legal move
    break
else
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm2= input(prompt2);
    move = pm2;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm2= randi([2,9]);
        move=pm2;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm2= randi([2,9]);
        move=pm2;
        break;
    end
 end
 end
end
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);

%show board
clc
disp(Board)         %updated board

%% Computer's 3rd move (Again = play game again variable to quit/restart game)
disp ('My turn again...')
pause (2)
player=1;

 spots = 1:9;           %available spots on board
 taken = [cm1 pm1 pm2 cm2];     %taken spots
 cm3 = randsample(setdiff(spots,taken),1);  %choose random spot exclude taken in spots available
 
move=cm3;
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);   

%show board and check for winner
clc 
disp (Board)            %updated board
Again= 22;              %variable to determine if you want to play again after win
[NumericBoard, Again]= winner_loops(NumericBoard, Again);
if Again==3
    break
end
%% Player's 3rd move
player= 2;
prompt= 'Pick an available numbered space\nthen press enter.\n';
pm3= input(prompt);
move = pm3;
% validate move
for i = 1:3
    illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4);
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm3= input(prompt2);
    move = pm3;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm3= randi([2,9]);
        move=pm3;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm3= randi([2,9]);
        move=pm3;
        break;
    end
elseif illegalmove == 0;        %legal move
    break
else
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm3= input(prompt2);
    move = pm3;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm3= randi([2,9]);
        move=pm3;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm3= randi([2,9]);
        move=pm3;
        break;
    end
 end
 end
end
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);

%show board and check for winner
clc 
disp (Board)             %updated board
[NumericBoard, Again]= winner_loops(NumericBoard, Again);
if Again==3
    break
end
%% Computer's 4th move 
disp ('My turn again...')
pause (2)
player=1;

 spots = 1:9;           %available spots on board
 taken = [cm1 pm1 pm2 cm2 cm3 pm3];     %taken spots
 cm4 = randsample(setdiff(spots,taken),1);  %choose random spot exclude taken in spots available
 
move=cm4;
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);   

%show board and check for winner
clc 
disp (Board)             %updated board
[NumericBoard, Again]= winner_loops(NumericBoard, Again);
if Again==3
    break
end
%% Player's 4th move
player= 2;
prompt= 'Pick an available numbered space\nthen press enter.\n';
pm4= input(prompt);
move = pm4;
% validate move
illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4);
for i = 1:3
    illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4);
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm4= input(prompt2);
    move = pm4;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm4= randi([2,9]);
        move=pm4;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm4= randi([2,9]);
        move=pm4;
        break;
    end
elseif illegalmove == 0;        %legal move
    break
else
 if illegalmove == 1 && x<2;
    prompt2='That is not a legal move. Try again.\n';   %error message 1
    pm4= input(prompt2);
    move = pm4;
	x = x + 1;
    if illegalmove == 1 && x == 2;
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm4= randi([2,9]);
        move=pm4;
        break;
    elseif illegalmove == 0;
        break
    else 
        disp('You have lost your freedom of choice')    %error message 2
        disp('I will go for you.')
        pause (2)
        pm4= randi([2,9]);
        move=pm4;
        break;
    end
 end
 end
end
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);

%show board and check for winner
clc 
disp (Board)             %updated board
[NumericBoard, Again]= winner_loops(NumericBoard, Again);
if Again==3
    break
end
%% Computer's 4th move 
disp ('My turn again...')
pause (2)
player=1;

 spots = 1:9;           %available spots on board
 taken = [cm1 pm1 pm2 pm3 pm4 cm2 cm3 cm4];     %taken spots
 cm5 = randsample(setdiff(spots,taken),1);  %choose random spot exclude taken in spots available
 
move=cm5;
[Board,NumericBoard]=GB(Board, NumericBoard, move, player);   

%show board and check for winner
clc 
disp (Board)             %updated board
[NumericBoard, Again]= winner_loops(NumericBoard, Again);
if Again==3
    break
end

%% Draw game message
disp ('Well... This is awkward.')
disp('It seems to be a draw.')
pause (2)
playagainprompt='Want to play again (Y=1/N=0)? ';
Again= input(playagainprompt);
if Again == 0;
    break  
end
disp('annnd... we''re done!')
end
  