function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


mu = mean(X)
sigma = std(X)

%substract mu
X_norm_temp = [];

for i = 1:size(X,2);
    feature_i = X(:,i);
    mu_i = mu(1,i)*ones(size(feature_i,1),1);
    sigma_i = sigma(1,i)*ones(size(feature_i,1),1);
    feature_i = (feature_i - mu_i)./(sigma_i);
    X_norm_temp =  [X_norm_temp feature_i];
end

X_norm = X_norm_temp

% ============================================================

end
