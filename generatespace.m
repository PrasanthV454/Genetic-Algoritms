function [samplespace]=generatespace(cities)
samplespace = zeros(2*cities,cities)
for i=1:(2*cities)
    samplespace(i,:) = randperm(cities)
end
end