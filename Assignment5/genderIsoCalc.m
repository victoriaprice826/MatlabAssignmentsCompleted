function [ maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean ] = genderIsoCalc( Gender, Day1, Day2, Day3)
%Calcualating individual and group isometric strength mean values across 3 days
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Calculates individual mean isometric strength values across
%    all 3 days of lifting for the appropriate group. Function also provides 
%    single mean value for each gender group. 
%    These data are not normalized.
%
%   Inputs: Gender, Day1, Day2, Day3
%
%   Outputs: maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean and femaleGroupIsoMean
%
%   Victoria Price (10/20/16 Matlab 2014a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

matgender = cell2mat(Gender);    % converted cell to double to be able to read
maleIsoIndMeans = zeros(size(matgender));   % created matrix of 0s to define male and female ind. variables
femaleIsoIndMeans = zeros(size(matgender));

for i= 1:length (matgender) % run matgender through to determine if male or female and find ind strength means
    if matgender (i,1) == 'M'
        maleIsoIndMeans(i)=(Day1(i)+Day2(i)+Day3(i))/3;
    else 
        femaleIsoIndMeans(i)= (Day1(i)+Day2(i)+Day3(i))/3;
    end
end

maleGroupIsoMean = mean(maleIsoIndMeans);   %determines male or female grp means
femaleGroupIsoMean = mean(femaleIsoIndMeans);
maleGroupIsoMean(2:25,1) = 0;           %filled in empty cells with 0's
femaleGroupIsoMean(2:25,1) = 0;
end

