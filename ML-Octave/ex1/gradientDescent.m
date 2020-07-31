function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

 x = X(:,2);
 h = theta(1) +  (theta(2)*x);

 theta0 = theta(1) -  alpha * (1/m) *  sum(h-y);
 theta1 = theta(2) -  alpha * (1/m) *  sum((h-y).*x);

 theta = [theta0; theta1];
   
 J_history(iter) = computeCost(X, y, theta);
   
end
 %disp(min(J_history));
 
end