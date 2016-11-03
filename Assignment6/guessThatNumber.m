function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME:
%
%         DUE: November 3rd (12 total- 11 found)
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it,
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
    'This program plays the game of Guess That Number in which you have to guess\n', ...
    'a secret number.  After each guess you will be told whether your \n', ...
    'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

%ERROR: while running prgm if letter was inputted then error would
%populate, added 's' so that text wouldn't be evaluated as an expression

%ERROR: while running prgm error displayed when no input was provided.
%Changed input to regular expression to be evaluated

levelinput = input('Enter level (1-3): ', 's');
level_reg = regexp(levelinput, '[ ,]', 'split');
level = str2double(level_reg);

% ERROR: Ran code and ran into continous loop.
% Replaced || with && (one input acceptable vs all levels)

while level ~= beginner && level ~= moderate && level ~= advanced
    fprintf('Sorry, that is not a valid level selection.\n')
    levelinput = input('Please re-enter a level of play (1-3): ', 's');
    level_reg = regexp(levelinput, '[ ,]', 'split');
    level = str2double(level_reg);
end

% set highest secret number based on level selected

%ERROR: while reading through found that level should be set to == rather than trying to assign level as variable beginner (changed level = beginner to level == beginner)
if level == beginner
    
    highest = beginnerHighest;
    
elseif level == moderate
    
    highest = moderateHighest;
    
else
    %ERROR: variable advancedHighest was misspelled (advancedhighest), found by scrolling through
    highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play

% ERROR: ran into issue that guess value was too low and value was never
% picked within range. Replaced secretNumber equation with one that will
% generate a single integer up to highest variable number.

secretNumber = randi(highest,1,1);

% initialize number of guesses and User_guess

%ERROR: While running prgm, number of tries was 1 more than attempted guesses.  Fixed by changing variable to 0 rather than 1

numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber
    
    % get a valid guess (an integer from 1-Highest) from the user
    
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    
    %ERROR: while running prgm it would not allow you to pick the highest
    %value of the level. Changed >= to just > so that highest # can be
    %picked
    
    while userGuess < 1 || userGuess > highest
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        userGuess = input('');
    end % of guess validation loop
    
    % add 1 to the number of guesses the user has made
    
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
    % ERROR: while trying to play, guess continously told me congrats and to guess again. Sign was flipped so that if my guess was too low it wouldn't be recognized (changed > to <)
    
    if userGuess < secretNumber
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        %ERROR: While running prgm everything after 'in...' did not display
        %on the first row.  Replaced second %d with num2str(numOfTries) so
        %that the # of attempts would pull to sentence.
        fprintf(['\nCongratulations!  You got %d in ' num2str(numOfTries) ' tries.\n\n'], ...
            secretNumber);
        
        fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
    end  % ERROR: missing end statement found while reading through for the above if statement
end  % of guessing while loop

% end of game