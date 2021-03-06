function [Board,NumericBoard]=GB(Board,NumericBoard,move,player)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% updates the tic tac toe gameboards (numeric and visual boards)
% Name: Victoria Price
% Date: 9/26/16
% Details: both visual board (Board) and number board (NumbericBoard) are
% updated using their move and player number (1= computer='X', 2=
% player='O'). Input variables: Board, NumericBoard, move, player. Output
% variables: updated Board and NumericBoard.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=[1:3;4:6;7:9];        %reference for where numbers are on the matrix
[r,c]=find(a==move);    %find space to change

if player==1
   NumericBoard (r,c)= 1;     %Update numeric board
   Board{r,c}='X';          %Update player board
elseif player==2
   NumericBoard (r,c)= 2;
   Board{r,c}='O';
end 
