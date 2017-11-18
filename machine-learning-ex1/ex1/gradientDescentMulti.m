function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
thetaLen = length(theta);
tempVal = theta;

for iter = 1:num_iters
temp = (X*theta - y);
    
    for i=1:thetaLen
        tempVal(i,1) = sum(temp.*X(:,i));
    end
    
    theta = theta - (alpha/m)*tempVal;
    
    J_history(iter) = computeCost(X, y, theta);
 
end
