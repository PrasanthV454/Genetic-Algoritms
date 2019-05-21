cities = 10;
samplespace = generatespace(cities);
[parent1,parent2] = chooseparent(samplespace);
distanced = distancebetweencities(cities);
for i=1:100
offspring1 = swapmutate(parent1); 
offspring2 = swapmutate(parent2);
[parent1,parent2]=selection(parent1,parent2,offspring1,offspring2,distanced);
offspring1 = scramblemutation(parent1);
offspring2 = scramblemutation(parent2);
[parent1,parent2]=selection(parent1,parent2,offspring1,offspring2,distanced);
[offspring1,offspring2] = partiallymappedcrossover(parent1,parent2);
[parent1,parent2]=selection(parent1,parent2,offspring1,offspring2,distanced);

end
