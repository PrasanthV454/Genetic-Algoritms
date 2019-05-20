function [distancetravelled] = fitness(solution)
sum=0;
x=length(solution);
for i=1:x-1
    sum = sum + distance(solution(i),solution(i+1));
end
distancetravelled=sum;
end