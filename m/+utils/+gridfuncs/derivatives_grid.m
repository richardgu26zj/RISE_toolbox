function R=derivatives_grid(R)
% derivatives_grid -- creates a grid of unique permutations of derivatives,
% with non-increasing elements from left to right
%
% Syntax
% -------
% ::
%
%   R1=derivatives_grid(R0)
%
% Inputs
% -------
%
% - **R0** [vector|matrix]: initial permutation of derivatives
%
% Outputs
% --------
%
% - **R1** [matrix]: permutation indexes for derivatives of next order
%
% More About
% ------------
%
% Examples
% ---------
%
% See also: mygrid 

[rr,cc]=size(R);
R=mat2cell(R,ones(rr,1),cc);
for irow=1:rr
    item=R{irow};
    stretch=1:item(end);
    n=numel(stretch);
    R{irow}=[item(ones(n,1),:),stretch(:)];
end
R=cell2mat(R);
