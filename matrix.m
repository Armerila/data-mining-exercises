for i = 1:5
    rows(i,:) = real(double(table2array(Matrix(i,:))));
    %soundsc(real(double(table2array(Matrix(i,:)))))
    %pause(1)
end

plot(rows(5,:))
hold on
plot(rows(3,:))


for i = 1:5
    means(i) = mean(rows(i))
end    




