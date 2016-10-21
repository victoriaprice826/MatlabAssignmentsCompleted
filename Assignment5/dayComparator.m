function [ day1toDay2, day2toDay3 ] = dayComparator( SubjectID, Day1, Day2, Day3 )
% Determines if subject imporved from day 1 to 2 or day 2 to 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Description: Takes subject IDs and two days as inputs and returns a
%   matrix with the subject IDs of the subjects who had an increase from
%   the 1st to the 2nd day and 2nd to 3rd day.
%
%   Inputs: SubjectID, Day1, Day2, Day3
%
%   Outputs: day1toDay2, day2toDay3
%
%   Victoria Price (10/20/16 Matlab 2014a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
day1toDay2 = zeros(size(Day1)); %set variable vector size for quicker processing
day2toDay3 = zeros(size(Day2));

for i= 1:length (Day1)  % determines which subjects improved from day 1 to 2 and puts into matrix
    if Day1 (i,1) < Day2 (i,1)
        day1toDay2(i) = SubjectID(i);
    end
end
for i= 1:length (Day2)   % determines which subjects improved from day 2 to 3 and puts into matrix
    if Day2 (i,1) < Day3 (i,1)
        day2toDay3(i) = SubjectID(i);
    end
end
end

