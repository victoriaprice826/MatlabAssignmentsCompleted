function [NumericBoard, Again] = winner (NumericBoard, Again)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Check for winner of tic-tac-toe
% Name: Victoria Price
% Date: 9/26/16
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=NumericBoard; %(0= not selected, 1=player1, 2=player2)
%% possible moves for computer to win
X_moves=a==1;
X=[[sum(X_moves,1)]',[sum(X_moves,2)],[X_moves(1,1)+X_moves(2,2)+X_moves(3,3);X_moves(1,3)+X_moves(2,2)+X_moves(3,1);0]];
Xmax=max(max(X));
%% possible moves for player to win
O_moves=a==2;
O=[[sum(O_moves,1)]',[sum(O_moves,2)],[O_moves(1,1)+O_moves(2,2)+O_moves(3,3);O_moves(1,3)+O_moves(2,2)+O_moves(3,1);0]];
Omax=max(max(O));
%% if there's a winner message
if Xmax==3      %computer wins
    disp ('The all mighty electronic box in front of you is the winner!')
    pause (1)
    playagainprompt='Want to play again (Y=1/N=0)? ';
    Again= input(playagainprompt);
    if Again == 0
        disp('I knew you couldn''t handle this amazingness.  Goodbye.')
        Again=3;    %indicates that you want to quit
    elseif Again == 1
        run TicTacToe.m;
    else
        disp('I knew you couldn''t handle this amazingness.  Goodbye.')
        Again=3;
    end
elseif Omax == 3    %player wins
    disp ('Something must have glitched.')
    disp ('You win?')
    pause (1)
    playagainprompt='Want to play again (Y=1/N=0)? ';
    Again= input(playagainprompt);
    if Again == 0
        disp('I knew you couldn''t handle this amazingness.  Goodbye.')
        Again=3;
    elseif Again == 1
        run TicTacToe.m;
    else
        disp('I knew you couldn''t handle this amazingness.  Goodbye.')
        Again=3;
    end
end

