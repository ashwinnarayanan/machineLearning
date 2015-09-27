function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

sig = sigmoid(X*theta);
firstTerm = -y'*log(sig);
secTerm = -(1-y)'*log(1 - sig);
J = (1 / m) * sum(firstTerm+secTerm);

temp = (sigmoid(X*theta)-y)';

for i=1:size(X, 2)
	grad(i,:) = (1 / m) * sum(temp*X(:,i));
end

% 1 / m sum(−y log(h θ (x (i) )) − (1 − y (i) ) log(1 − h θ (x (i) )))
%partial der. = 1 / sum( (X*theta) - y ) . X

% =============================================================

end