function [offspring] = inversion(offspring)
   e = 0;
   t =10;
    q = randi(6,1);
    if q==1
        q =2;
    end
    s = randperm(t,q);
    s = sort(s);
    e = offspring(s(1));
    for i = 2:q
      if i ~= q
        offspring(s(i)) = offspring(s(i+1));
      else
        offspring(s(i)) = e;
      end
    end
end
