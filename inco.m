%529 cases, 16 variables
%5 diagnoses, 0 to 4.

%choose age column, inco13par imported as numeric matrix
age = inco13par(:,16);

%calculate mean
meanAge = nanmean(find(age));

%mean age of all patiens is [52.33]

%finding by diagnosis class
rows0 = find(inco13par(:,2)==0);
rows1 = find(inco13par(:,2)==1);
rows2 = find(inco13par(:,2)==2);
rows3 = find(inco13par(:,2)==3);
rows4 = find(inco13par(:,2)==4);

%splitting into subtables
table0 = inco13par(rows0,:);
table1 = inco13par(rows1,:);
table2 = inco13par(rows2,:);
table3 = inco13par(rows3,:);
table4 = inco13par(rows4,:);

%fill missing values
means0 = fillmissing(table0,'movmean',529);
means1 = fillmissing(table1,'movmean',529);
means2 = fillmissing(table2,'movmean',529);
means3 = fillmissing(table3,'movmean',529);
means4 = fillmissing(table4,'movmean',529);

%combined table with means
combTable = [means0; means1 ; means2 ; means3 ; means4];

%some variables of diagnosis class 4 had all NaN values,
%so replacing those with mean of all patients
meanTable = fillmissing(combTable,'movmean',529);

%boxplot and histogram

hist(meanTable(:,16),20);

%choose UVA, US, CYM and PTR
boxTable = meanTable(:,[3 4 7 8]);
boxplot(boxTable);

%Rows to consider
distRows = meanTable([2 269 398],:);
D = squareform(pdist(distRows));

%It appears that 269 and 398 are closest to each other
%Problem with euclidean distance is that in higher dimensionality
%the results might not be intuitive and noisy attributes can
%skewer the results.










