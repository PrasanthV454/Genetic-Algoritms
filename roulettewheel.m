f=[1,8,7,9];
s=0;
for i=1:length(f)
    s=s+f(i)
end
f=(1/s).*f;
y=rand();
if y<(1/s)
    solution=s*f(1)
    solution=int16(solution)
elseif y>(1/s)&y<(7/s)
    solution=s*f(3)
    solution=int16(solution)
elseif y>(7/s)&y<(8/25)
    solution=s*f(2)
    solution=int16(solution)
else y>(8/s)&y<(9/s)
    solution=s*f(4)
    solution=int16(solution)
end
