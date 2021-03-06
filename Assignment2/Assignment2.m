%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Name: Victoria Price 
%   Due Date: September 15th
%   Description: Exercises and solutions  
%       - Chapter 1 exercies: 1-6, 11-15, 22, 24-27
%       - Chapter 2 exercies: 1-4, 6-10, 12, 23, 26, 30, 31
%       - Chapter 3 exercies: 1, 4, 6, 8, 13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Chapter 1 Exercises
%1.)
CopperWeight = 63.55

%2.)
myage = 30
newAge = myage - 2 + 1 

%3.) solution is 63
namelengthmax

%4.) 
weight= 56; ounces=7;
who
whos
clear ounces
who 
whos

%5.) range for: 
% uint32 = 0, 4294967295
% uint64 = 0, 18446744073709551615
intmin uint32, intmax uint32
intmin uint64, intmax uint64

%6.)
decimalChange= 1.2886, 
newDecimal= int32(decimalChange)

%11.) convert pounds to kilos
pounds = 95;
kilos = pounds/2.2

%12.) convert fahrenheit to celsius
ftemp = 83;
ctemp = (ftemp-32)* (5/9)

%13.) convert dollar to shekels
dcurrency = 10.75;
shcurrency = dcurrency * 3.76

%14.)
sind(1),
sin(deg2rad(90))

%15.)
R1= 2; R2=3; R3=4;
RTotal = 1/((1/R1)+(1/R2)+(1/R3))

%22.)Capital A comes before a with ASCII character encoding
Avsa = double ('Aa')

%24.)
% 'b' >= 'c' - 1    1 = true
% 3 == 2 + 1        1 = true
% (3 == 2) + 1      1 = true
% xor(5 < 6, 8 > 4) 0 = false

%25.)statement that is true for at lease one condition but false if both
%are true
x = 7; y = 9;
truefalse = ~(x>5) & ~(y<10)

%26.)
3*10^5 == 3e5

%27.)
log10(10000) == 4

%% Chapter 2 Exercises
%1.)
rowv1 = 2:7 
rowv2 = 1.1000 : 0.2 : 1.7000 
rowv3 = 8:-2:2

%2.)
vec = linspace (0, 2*pi, 50)

%3.)
vec2 = linspace (2, 3, 6)

%4.)
-5:1:-1 == linspace(-5, -1, 5)
5:2:9 == linspace(5, 9, 3)
8:-2:4 == linspace(8, 4, 3)

%6.)
columnv= (-1:0.5:1)'

%7.)
vec2 (1:2:end)
columnv (1:2:end)

%8.)
mat = [7:10; 12:-2:6]
mat (1,3)
mat (2,1:end)
mat (1:end, 1:2)

%9.) total elements in matrix
numel (mat)

%10.)
mat = [7:10; 12:-2:6]
newrow=(1:4)
mat(1,:) = newrow
mat(:,3) = [1, 57]

%12.) random intergers chosen for rows and cols and then set in an all 0
%matrix
rows= randi([1,5], 1,1), 
cols= randi([1,5], 1,1),
MatrixZeros = zeros(rows, cols)

%23.)
summation = [3 5 7 9 11]
finalsum = sum (summation)

%26.) dividing fractions
numerator = [3:2:9]; 
denominator = [1:4];
FracTot = sum (numerator./denominator)

%30.)  
RandomRow = randi ([-10, 10], 1,5)          %random vector of numbers
RandomRow3 = randi ([-10, 10], 1,5) - 3     %vector -3
RandomRow = randi ([-10, 10], 1,5)
RandomRowPos = sum(RandomRow(:)>=0)         %number of positive numbers in vector
RandomRow = randi ([-10, 10], 1,5)
RandomRowAbs = abs(RandomRow)               %absolute value of vector
RandomRow = randi ([-10, 10], 1,5)
RandomRowMax = max(RandomRow)               %max value in vector

%31.)
RandomMatrix = randi ([-10, 10], 3,5)       %random matrix
RandomMatrixCol = max (RandomMatrix)        %max value per each column
RandomMatrix = randi ([-10, 10], 3,5)       
RandomMatrixRow = max (RandomMatrix,[], 2)  %max value per row, dim = 2nd dimension
RandomMatrix = randi ([-10, 10], 3,5)       
RandomMatrixTot = max (RandomMatrix(:))     %max value of matrix


%% Chapter 3 Exercises
% add your code for each exercise in your main script (do
% not make separate scripts even if the exercise calls for it, but do include the
% appropriate comments)

%1.) calculate hollow sphere volume
rO = 7;         % outer radius
rI = 5;         % inner radius
spherevol = ((4*pi)/3)*(rO^3 - rI^3)

%4.) How to input a matrix to the input command
%vec = input ('enter a matrix: ')
%enter a matrix: [3:8; 4:9; 5:10] or randi(2)

%6.)
fprintf ('%f\n', 12345.6789)        %ans: 12345.678900
fprintf('%10.4f\n', 12345.6789)     %ans: 12345.6789
fprintf('%10.2f\n', 12345.6789)     %ans: 12345.68
fprintf('%6.4f\n', 12345.6789)      %ans: 12345.6789
fprintf('%2.4f\n', 12345.6789)      %ans: 12345.6789

%8.)
flowrate = input('What is the fluid flow in m^3/s? ');
fprintf('A flow rate of %d meters per second is equivalent to %1.3f feet per second.\n', flowrate, flowrate*0.028)

%13.)
xvalue = input('What is the x value of the particle? ');
yvalue = input('What is the y value of the particle? ');
zvalue = input('What is the z value of the particle? ');
numValue = [xvalue yvalue zvalue];
denValue = sqrt(xvalue^2 + yvalue^2 + zvalue^2);
ParticleCoord = (numValue./denValue)
