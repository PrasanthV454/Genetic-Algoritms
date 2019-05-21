
p=[4,9,6,5,8,3];
s=0;
for i=1:length(p)
    s=s+p(i);
end
p=(1/s).*p; %converting in probability fraction 
prompt='no. of selection';
n=input(prompt);   %no of selection taken from user
solution=zeros(1,n); % solution values filled with o initially
k=zeros(1,length(p));
k(1)=p(1)*360;
for i=2:length(p)
    k(i)=k(i-1)+p(i)*360; %creating a piechart 
end
y=rand()*360; %GENERating random value between 0 and 360
for i=1:length(p)  %first index 
    if k(i)>y
       solution(1)=i;
       break;
    end
end

for i=2:n    %loop for solution
    kl=y+(360/n)*(i-1); %equally distributed n markers 
    if kl>360
        kl=kl-360; %values goes to 0 to 360
    end
    for j=1:length(k)  %degree loop
       if kl<k(j)
           solution(i)=j;
           break
        end
    end
end


    
    

        
    
    
    
    