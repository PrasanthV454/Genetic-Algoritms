function offspring = swapmutate(offspring)
   t = length(offspring);
   q = randperm(t,2);
   c = offspring(q(1));
   offspring(q(1))= offspring(q(2));
   offspring(q(2)) = c;
end