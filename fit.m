function [fitness] = fit(input)


genelength=784
genes=[784];

random=randi(500)

for i=1:random
    genes(i)=ceil(random)/ 2; 
    fitness=0
end

for j=1:random
    
    if(genes(j)==1 )
        fitness=fitness+1;
    end
end
