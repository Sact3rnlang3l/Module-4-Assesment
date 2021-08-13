log_file = open("um-server-01.txt")
#opens and logs the entire um-server-01 file in console

def sales_reports(log_file): # creates a function called sales_reports using the parameter of log_file
    for line in log_file: #let's make the parameter into a loop
        line = line.rstrip() #line strips anything extra in a string
        day = line[0:3] #day is two specific parts of the list , 0 and 3 in the index
        if day == "Mon": #if the day is Mon print the line
            print(line)


sales_reports(log_file)
