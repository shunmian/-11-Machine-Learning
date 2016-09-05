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

theta_L = theta(2:size(theta,1),:);
J = 1/(2*m)*((X*theta-y)'*(X*theta-y)+lambda.*theta_L'*theta_L);

X_0 = X(:,1);
grad_0 = X_0'*(X*theta-y)/m;
X_L = X(:,2:size(X,2));
grad_L = (X_L'*(X*theta-y)+lambda.*theta_L)/m;

grad = [grad_0;grad_L];


% =========================================================================

grad = grad(:);

end
