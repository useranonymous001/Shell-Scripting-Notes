
LETS LEARN ABOUT THE FOR LOOPS IN BASH SCRIPTING

For Loops in bash are generally used for the follwing purposes:
    1) when we have to iterate through some files
    2) for executing a command or set of commands multiple times
    3) iterate through a lines within a file
    4) also iterate through the output of a command

    SYNTAX :
    for every_command in (file_name | range of command | command arguments)
    do
        // something
    done # for indicating the end of the for loops


    SOME EXAMPLES OF USECASE OF FOR LOOPS IN BASH
        
        #Eg 1: using single command at once
        
        #BAD PRACTICE
        for every_names in `cat names.txt`   # using `` backtik is a bad practice use $() instead
        do
                echo $every_names
        done

        #GOOD PRACTICE
        for every_names in $(cat names.txt)
        do
            echo $every_names
        done


        #Eg 2: using for loops prividing a range
        # loops for creating a 10 files

        cd test                # optional, I used only for my purpose
        for files in {0..10}   #provides range of number from 1 to 10 | use only two dots (..) 
        do
                # touch name-$files.txt
                # echo "name-$files.txt created successfully"
                rm name-$files.txt
                echo "name-$files.txt deleted successfully"
        done

        Explanation:
            ==> Here, files acts as an variable container for each iterables 

        SOME REAL LIFE USE OF FOR LOOPS
            # Example of  counting the lines of all the files present inside the /etc directory
            cd /etc
            for file in $(ls)
            do
                    if [ -d $file ]
                    then
                            echo $file is a directory
                    else
                            echo Line count of $file is $( cat $file | wc -l )
                    fi
            done


    Note: 
     ==>We can also call other script in our script by : 
        bash path/to/script_name
        
        for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
        do  
            bash /home/bob/create-and-launch-rocket $mission
        done




        for numbers in {31..40}
        do
            echo $numbers
        done