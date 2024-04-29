
LETS BEGIN OUR JOURNEY OF LEARNING BASH SCRIPTING BY EXECUTING OUR FIRST SCRIPTS

RUNNING OUR SCRIPTS
    bash script_name.sh  ( ==> it is not necessary for our script to always have an extension of ".sh" )
    # OR 
    bash yourScript


RUNNING BASH SCRIPT AS COMMAND IN LINUX
	# For that we need to add our script to the path environment variable where it is configured:
	#Like 
    /usr/local/bin:/usr/local/sbin:/usr/bin:
	#For the short cut we can directly use: 
    $PATH

	# We need to append the path of the directory containing the script to the end of the path variable
    /usr/local/bin:/usr/local/sbin:/usr/bin:/home/rohan
    # OR
    export PATH=$PATH:/home/rohan

    # After adding our script to the path environment variable we can directly run our scripts as a command 
    $ script_name
    # checking the path of the command
    $ which script_name


MAKING THE SCRIPT EXECUTABLE
    chmod +x /home/rohan/script_name



CREATING VARIABLES AND WORKING WITH THEM 
CREATING A REUSABLE SCRIPTS

ARITHMETIC OPERATIONS IN SCRIPTS

    1) expr 
        a=10
        b=20
        
        expr $a + $b   ==> 30 ( note the space before and after the operator )
    
        expr $a \* $b  ==> 200
        ( *Note: a escape sequence is required while using multiplication operator. Because  the * operator has special meaning of denoting 'all' in bash scripting or as well as in linux systems ) 

    2) echo with double parenthesis
        ==> calculating inside the parenthesis does not require space between the operators
        echo $((a+b))
        echo $((a - b))
        echo $((a / b))
        echo $((a * b))  ==> operating inside the double parenthesis doesnot require the use of escape sequence characters too.
    
    NOTE:  
        All these operations produces and output in decimal number but not in floating point number: 
        EG: expr 10 / 3 ==> 3  rather than 3.3333

        For that we can use a handy tool in linux to produce the actual value called basic calculator (bc)
        Eg: expr 10 / 3 | bc -l  ==> 3.3333
        actually we can pipe the result of the inital expression in to he (bc) toolkit 
    
    3) increment/decrement like in C 
        x=23
        y=12

        echo $(( ++a ))
        echo $(( --a ))
        echo $(( a-- ))
        echo $(( a++ ))

        Here, this expression works similar to that ones in C-Program, if you have basic understanding of C, you can figure out the basic meaning of these operator.

    WAY OF PASSING/ASSIGNING VALUE TO FROM THE COMMAND LINE
        # Finding sum of two variable while taking two number as an argument
        a=$1
        b=$2
        //calc.
        sum=$((a + b))


        num1=$1
        num2=$2
        num3=$3
        sum=$(( num1 + num2 + num3 ))
        average=$(echo "$sum / 3" | bc -l)
        echo $average

    
    INPUT/OUTPUT IN BASH

    We can take input in two ways:
        1) command line argument:
            eg: name=$1
                echo "yourname is $1"
            
            Note: user should provide an argument right while running the command
                eg: bash srcipt.sh "rohankhatri"   ==> don't use "" 
                '


        2) using read command
        
            eg: read -p "enter name" var_name  ==> Note : '$' is not used while taking input
                echo "your name is $var_name   ==> $ is used while accessing the input
                
            Here, Prompt is provided to the user for input.

