function illegalmove = legality_loops(cm1, cm2, cm3, cm4, pm1, pm2, pm3, pm4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Determines if move in tic tac toe is leagal to play before changing board
% Name: Victoria Price
% Date: 9/26/16
% Details: List of all illegal moves based on if move has already been
% made. Input variables: cm1-cm4, pm1-pm4 (all player and computer's moves)
% Output variables: illegalmove (determines if move made is a legal (0) or
% illegal (1) move)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if cm1 == cm2;
    illegalmove = 1;
elseif cm1 == cm3;
    illegalmove = 1;
elseif cm1 == cm4;
    illegalmove = 1;
elseif cm1 == pm1;
    illegalmove = 1;
elseif cm1 == pm2;
    illegalmove = 1;
elseif cm1 == pm3;
    illegalmove = 1;
elseif cm1 == pm4;
    illegalmove = 1;
elseif cm2 == cm3;
    illegalmove = 1;
elseif cm2 == cm4;
    illegalmove = 1;
elseif cm2 == pm1;
    illegalmove = 1;
elseif cm2 == pm2;
    illegalmove = 1;
elseif cm2 == pm3;
    illegalmove = 1;
elseif cm2 == pm4;
    illegalmove = 1;
elseif cm3 == cm4;
    illegalmove = 1;
elseif cm3 == pm1;
    illegalmove = 1;
elseif cm3 == pm2;
    illegalmove = 1;
elseif cm3 == pm3;
    illegalmove = 1;
elseif cm3 == pm4;
    illegalmove = 1;
elseif cm4 == pm1;
    illegalmove = 1;
elseif cm4 == pm2;
    illegalmove = 1;
elseif cm4 == pm3;
    illegalmove = 1;
elseif cm4 == pm4;
    illegalmove = 1;
elseif pm1 == pm2;
    illegalmove = 1;
elseif pm1 == pm3;
    illegalmove = 1;
elseif pm1 == pm4;
    illegalmove = 1;
elseif pm2 == pm3;
    illegalmove = 1;
elseif pm2 == pm4;
    illegalmove = 1;
elseif pm3 == pm4;
    illegalmove = 1;
else
    illegalmove = 0;
end
