function [offspring] = scramble_mutation(offspring)
    cities = length(offspring);
    p =randi(int16(cities/2),1)
    if p==1
        p=2;
    end
    q =randperm(cities,p)
   % s = zeros(1,p);
    for i=1:p
       s(i) = offspring(q(i))
    end
    r = s(randperm(length(s)))
   for i = 1:p
       offspring(q(i)) = r(i);
   end


%end of scramble mutation
end