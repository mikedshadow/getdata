# getdata
coursera course getdata-014

____________________________

## Description of tidying process in run_analysis.R
First check if the data folder is present if not an error message appears.

Starting with the folder of raw data, there are 3 .txt files, x_folder, y_folder and subject_folder for each of the two folders, test and train. Additionally, the codebook is in the features.txt file giving the names of the variables.

The files are all read with read.table into datafames named x_test.txt to 'testdata', y_test.txt to 'testlabels', subject_test.txt to 'testsubject', similarly for _train and features.txt to 'features'.

Note by checking dim() that the test dataframes each have the same number of rows, 2947, as do the train dataframes, 7352. Also the traindata and testdata each have 561 columns.  

The next step is to merge the dataframes using cbind and rbind. Add the subject and activity columns(using cbind) in front of the data for each set calling these 'testwide' and 'trainwide'. These are dimensions 2947 x 563 and 7352 x 563. Now rbind  these together to form the dataframe 'wide' which is 10299 x 563.

Next search the variable names in the 'features' dataframe for the character strings "mean", "std", and "Mean", using the grep() function. Store the location data from grep for each string separately. This was useful when then looking at the variables each grep() produced. It seemed that the variables that came up under "Mean" were all coming from some angle data and were not actually means like some of the others.
The meanFreq category for each variable might also not be desired but it seemed less clear so I included it. More information on each variable is in the codebook.

After choosing the filters on the variables, combine and sort any  output vectors from grep(). This gives a vector with the desired variables' column numbers in ascending order. Subset 'wide' by this vector on the columns to get 'widecols' a dataframe with now only 79 columns for the desired means and standard deviations. Sadly this cut off the activity and subject columns, so they are put back on.
Now using this vector as the rows in 'features' extract the names(use as.character) of the column variables, add in "activity" and "subject" , and store as 'featnames'.

Using 'featnames' assign the variables their names from the codebook with names().
Convert 'activity' and 'subject' to factors and give the activities their names from the activity_labels.txt file. I suppose this could be done with extracting code but it was short, there are only six activities. This dataset would be the result of step 4 in the instructions. 

Finally, construct the tidy dataset, 'tidy' by using the summarise_each function in the dplyr package with the mean function and the two grouping variables 'activity' and 'subject'. Then the write.table function produces the output file tidy.txt which is in the github repo in addition to being submitted on Coursera. Thanks for your time, I tried to be concise.






