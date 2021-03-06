
function [Pc, qc, Sc, Pu_tilde, Px_tilde, qx_tilde, Px0_tilde] = constraint_mats(F,G,Pu,qu,Px,qx,Pxf,qxf)
    % P. Trodden, 2017.

    % input dimension
    m = size(Pu,2);

    % state dimension
    n = size(F,2);

    % horizon length
    N = size(F,1)/n;

    % number of input constraints
    ncu = numel(qu);

    % number of state constraints
    ncx = numel(qx);

    % number of terminal constraints
    ncf = numel(qxf);

    % if state constraints exist, but terminal ones do not, then extend the
    % former to the latter
    if ncf == 0 && ncx > 0
        Pxf = Px;
        qxf = qx;
        ncf = ncx;
    end

    %% Input constraints

    % Build "tilde" (stacked) matrices for constraints over horizon
    Pu_tilde = kron(eye(N),Pu);
    qu_tilde = kron(ones(N,1),qu);
    Scu = zeros(ncu*N,n);

    %% State constraints

    % Build "tilde" (stacked) matrices for constraints over horizon
    Px0_tilde = [Px; zeros(ncx*(N-1) + ncf,n)];
    if ncx > 0
        Px_tilde = [kron(eye(N-1),Px) zeros(ncx*(N-1),n)];
    else
        Px_tilde = zeros(ncx,n*N);
    end
    Pxf_tilde = [zeros(ncf,n*(N-1)) Pxf];
    Px_tilde = [zeros(ncx,n*N); Px_tilde; Pxf_tilde];
    qx_tilde = [kron(ones(N,1),qx); qxf];

    %% Final stack
    if isempty(Px_tilde)
        Pc = Pu_tilde;
        qc = qu_tilde;
        Sc = Scu;
    else
        % eliminate x for final form
        Pc = [Pu_tilde; Px_tilde*G];
        qc = [qu_tilde; qx_tilde];
        Sc = [Scu; -Px0_tilde - Px_tilde*F];
    end
end