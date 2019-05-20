function [offspring1,offspring2] = partiallymappedcrossover(parent1,parent2)
cities=length(parent1);
x=int16(fix(cities/3));
y=2*x;
offspring1=zeros(1,cities);
offspring2=zeros(1,cities);
for i=x+1:y
    offspring1(i) = parent2(i);
    offspring2(i) = parent1(i);
end
offspring1=matched(parent1,offspring1);
offspring2=matched(parent2,offspring2);
end