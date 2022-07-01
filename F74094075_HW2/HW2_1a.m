rate = input("Please enter the defective rate : ");
num = input("Please enter the number of products : ");
result = machine(num, rate);
fprintf("The products : ")
for i=1:num
    fprintf("%d" , result(1,i));
end
fprintf("\n");
fprintf("Number of defective products : %d\n", length(find(result == 1)));


