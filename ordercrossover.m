function [offspring1,offspring2] = ordercrossover(parent1,parent2)
cities = length(parent1);
offspring1 = zeros(1,cities);
offspring2 = zeros(1,cities);

p = randperm(cities,2);
if p(1)< p(2)
    i = p(1);
    j = p(2);
else
    i = p(2);
    j = p(1);
end
for k = i:j
offspring1(k)=parent1(k);
offspring2(k)=parent2(k);
end
k =1;
l =1;
w = ismember(0,offspring1);
while w == 1
    w = ismember(0,offspring1);
    z = ismember(parent2(k),offspring1);
    if z ==0 
        if l< i && l > j
        offspring1(l) = parent2(k);
        k = k + 1;
        l = l + 1;
        
        else
            l = l+1;
        end
    else
        k = k + 1;

    end
        
        
end
k =1;
l =1;
w = ismember(0,offspring2);

while w == 1
    w = ismember(0,offspring2);
    z = ismember(parent1(k),offspring2);
    if z ==0 
        if l< i && l > j
        offspring2(l) = parent1(k);
        k = k + 1;
        l = l + 1;
        
        else
            l = l+1;
        end
    else
        k = k + 1;

    end
        
        
end
end
