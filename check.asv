function [a]=check(parent,offspring,i)
j=find(offspring==parent(i));
if ismember(parent(j),offspring)
    check(parent,offspring,j);
else
    a=parent(j);
end
end