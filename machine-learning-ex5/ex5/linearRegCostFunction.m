function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


H =  X*theta;

differencePrediction = sum((H -y).^2) + lambda*(sum(theta.^2) -  (theta(1,1).^2));
J = differencePrediction/(2*m);

theta_temp = theta;
theta_temp(1,:)=0;
theta_temp=theta_temp;


grad = ((((H -y)'*X))./m )'+ (lambda/m)*theta_temp;
















% =========================================================================

grad = grad(:);

end
