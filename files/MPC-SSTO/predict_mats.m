
function [F,G] = predict_mats(A,B,N)
    % P. Trodden, 2015.

    % dimensions
    n = size(A,1);
    m = size(B,2);

    % allocate
    F = zeros(n*N,n);
    G = zeros(n*N,m*(N-1));

    % form row by row
    for i = 1:N
    %  F
    F(n*(i-1)+(1:n),:) = A^i;
    
    % G
    % form element by element
    for j = 1:i
        G(n*(i-1)+(1:n),m*(j-1)+(1:m)) = A^(i-j)*B;
    end
    end
end