
function [H,L,M] = cost_mats(F,G,Q,R,P)
    % P. Trodden, 2015.

    % get dimensions
    n = size(F,2);
    N = size(F,1)/n;

    % diagonalize Q and R
    Qd = kron(eye(N-1),Q);
    Qd = blkdiag(Qd,P);
    Rd = kron(eye(N),R);

    % Hessian
    H = 2*G'*Qd*G + 2*Rd;

    % Linear term
    L = 2*G'*Qd*F;

    % Constant term
    M = F'*Qd*F + Q;

    % make sure the Hessian is symmetric
    H=(H+H')/2;
end