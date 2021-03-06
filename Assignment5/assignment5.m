%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description: Analyze isometric strength data from CSV file
%   1. Loads data file (importdata) and separates matrix into column vectors
%   2. Runs function (genderIsoCalc) to determine means for each subject and also a group
%   gender mean
%   3. Runs a function (dayComparator) to determine which subjects improved from day 1 to 2
%   and from day 2 to 3
%   4. Determines normalized isokinetic values for each subject per day
%   then finds the mean of these values
%   5. Exports results into csv file 
%
%   Inputs: datafile
%
%   Outputs:SubjectID,Age,Gender,Weight,Day1,Day2,Day3,maleIsoIndMeans,
%   femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean, day1toDay2, 
%   day2toDay3,AllnormDay1mean,AllnormDay2mean,AllnormDay3mean,normDay1mean,
%   normDay2mean,normDay3mean
%
%   Name: Victoria Price (10/17/16 Matlab 2014a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Clear command window and past variables
clear all; clc;

%% Load data file using importfile function and save each column as a new
% variable
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile ('isok_data_6803.csv');      %import file function

%% Runs genderIsoCalc function to determine indvidual and gender group means
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean]= genderIsoCalc(Gender, Day1, Day2, Day3);

%% Runs dayComparator function to determine which indviduals improved from day 1 to 2 and day 2 to 3
[day1toDay2, day2toDay3] = dayComparator(SubjectID, Day1, Day2, Day3);

%% Normalized isokinetic data by grp means for each day
AllnormDay1mean = zeros(size(SubjectID));   %created empty vector for variables to store results faster
AllnormDay2mean = zeros(size(SubjectID));
AllnormDay3mean = zeros(size(SubjectID));
for i = 1:length(SubjectID)
    AllnormDay1mean(i) = Day1(i)/Weight(i); %found the norm values for each day for each subject
    AllnormDay2mean(i) = Day2(i)/Weight(i);
    AllnormDay3mean(i) = Day3(i)/Weight(i);
end
normDay1mean = mean(AllnormDay1mean);   %calculated the mean for each day
normDay1mean(2:25,1) = 0;               %filled in empty cells with 0's
normDay2mean = mean(AllnormDay2mean);
normDay2mean(2:25,1) = 0;
normDay3mean = mean(AllnormDay3mean);
normDay3mean(2:25,1) = 0;
    
%% Export Data to CSV file

% put variables into tables that were of equal lengths (25x1 = newdata and
% 1x1 = grpmeandata)
newdata = table(SubjectID,Age,Gender,Weight,Day1,Day2,Day3,maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);

%export to csv
writetable(newdata, 'iso_results.csv')

disp 'done!'
    
