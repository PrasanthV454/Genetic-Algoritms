%choosing one parent from Roulette Wheel Selection method
f=[1,8,7,9];
s=0;
for i=1:length(f)
    s=s+f(i)
end
f=(1/s).*f;    %probability of each fitness
y=rand();
if y<(1/s)     %return index
    solution=1
elseif y>(1/s)&y<(7/s)
    solution=3
elseif y>(7/s)&y<(8/25)
    solution=2
else y>(8/s)&y<(9/s)
    solution=4
end
