function x=load_draws(obj,pname,chain_id)
% INTERNAL FUNCTION
%

id=find(strcmp(pname,obj.pnames));

if isempty(id)

    error('unrecognized parameter name')

end

if isempty(chain_id)

    for ichain=1:obj.nchains

        xx=obj.draws(:,:,ichain);

        if ichain==1

            x=xx(id*ones(obj.nchains,1),:);

        else

            x(ichain,:)=xx(id,:);

        end

    end

else

    x=obj.draws(:,:,chain_id);

    x=x(id,:);

end


end