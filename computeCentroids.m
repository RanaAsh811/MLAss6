function centroids = computeCentroids(X, idx, K)
[m n] = size(X);
anom = 0;
centroids = zeros(K, n);
for i = 1:K
    c_i = idx==i;
    n_i = sum(c_i);
    c_i_matrix = repmat(c_i,1,n);
    X_c_i = X .* c_i_matrix;
    centroids(i,:) = sum(X_c_i) ./ n_i;
end



MEAN = mean(X);
STD=std(X);
counter = 0;
for z= 1:17999
prod=1;
%for loop kol l houses
for i = 1:18
    CDF=normpdf(X(z,i),mean(i),STD(i));
    prod=prod*CDF;
end
if (prod<0.001) || (prod>1-(0.001))
    counter = counter + 1
end

%end

end

