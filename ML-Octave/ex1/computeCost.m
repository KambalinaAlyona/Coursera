function J = computeCost(X, y, theta)

m = length(y); 
J = 0;
t = 0;

for i = 1:m
   t = t + ((theta(1)+theta(2)*X(i,2)-y(i))^2);
end;
 
J = 1/(2*m) * t;

end
