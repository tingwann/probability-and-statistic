function p = rndom_pick(x)

list = randi([1 14], x , 1);
p = zeros(1, 14);
for i = 1:length(list)
    p(list(i)) = p(list(i)) + 1;
end
end

