%% Compute external cost
% returns the num_nodes sized vector containing the cost 
% externally for each node. 
% External cost is the edge weight of two connecting nodes not belonging in
% same group

function [e_cost,i_cost] = get_Cost(s,t,w,c)

n = size(s,1);
e_cost = zeros(num_nodes,1)
i_cost = zerso(num_nodes,1)

for i = 1:n
   
    if(c(s(i)+1) ~= c(t(i)+1))
       e_cost(s(i)+1) =  e_cost(s(i)+1) + w(s(i)+1);
       e_cost(t(i)+1) =  e_cost(t(i)+1) + w(t(i)+1);
    else
       i_cost(s(i)+1) =  i_cost(s(i)+1) + w(s(i)+1);
       e_cost(t(i)+1) =  e_cost(t(i)+1) + w(t(i)+1);
    end
    
    
end

    e_cost = e_cost /2;
    i_cost = i_cost /2;


end