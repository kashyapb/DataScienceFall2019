format long


% === Variables === 
% TODO Comment out this for testing script
% A = [[0 1 0 1 0];...
%     [0 0 1 0 1];...
%     [1 0 0 0 1];...
%     [0 0 1 1 0];...
%     [0 0 0 1 0]];


% Variables 
% Setting tempMatrix to calculate steps distance
tempMatrix = A * A



% Return Value
length = 1 ;
foundReturn = 0;



% Notes 
% A is adjancy matrix 
% i is departure point
% j mininum path length
% if path > 20 , return error

% === Verify if adjacent ===

% Checking Conditions -> self to self

% ===  Check steps 1 first === 
if A(i, j ) ~= 0 
    foundReturn = 1;
% self to self 
end


% === While Loop === 
% if no answer go into while
% times matrix A to A to get i+1 steps 
while  foundReturn ==0 & length < 20
    length = length + 1;
    if tempMatrix(i , j) ~= 0 
        foundReturn = 1; 
    else
        tempMatrix = tempMatrix * A;
    end


end

length