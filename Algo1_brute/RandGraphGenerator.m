% Random Graph Generator
% Input number of nodes 
% limit of weights [lw,hw]
% Starting index of nodes.

num_nodes = 25;
lw = 1;
hw = 20;
idx = 0;

fid = fopen('./data/edgeG.csv','w');
fspec = '%d,%d,%d\n';
fprintf(fid,'Source,Target,Weight\n');

for i = idx:num_nodes-1
    for k = idx:i-1
        
        if(randi([0 1]) == 1)
            fprintf(fid,fspec,i,k,randi([lw hw]));
        end
        
    end
end

disp('File Write Done!');
fclose(fid);