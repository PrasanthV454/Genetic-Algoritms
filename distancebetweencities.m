function [distance] = distancebetweencities(cities)
coordinates=zeros(cities,2);
for i=1:cities
    coordinates(i,:)=randperm(100,2);
end
distance=zeros(cities,cities);
for i=1:cities-1
    position1=coordinates(i,:);
    for j=i+1:cities
        position2=coordinates(j,:);
        distance(i,j)=sqrt( (position1(1)-position2(1))^2 +  (position1(2) - position2(2))^2 );
        distance(j,i)=distance(i,j);
    end
end
end