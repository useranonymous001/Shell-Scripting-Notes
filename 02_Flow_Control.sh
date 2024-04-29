
TODAY WE WILL BE LEARNING ABOUT FLOW CONTROL IN BASH SCRIPTING  

    Flowcontrol in bash is little bit different.

    SYNTAX FOR IF ELSE STATEMENT IN BASH:

        if [ condition = true ]
        then
            echo "true"
        else 
            echo "false"
        fi              # denotes ending of if...else..statement

        NOTE: In bash, conditions are written inside the square brackets.
            =>There should always be space between the operands and the operator while writing conditions.
            eg: if [ $name = $username ]   
                    # Notice the spaces after each literals
            ==> fi     
                # indicates the end of the if...else.. statement


    OPERATORS IN BASH
        -gt ==> greater than
        -lt ==> less than
        -eq ==> equal
         =  ==> used for comparing strings

    CONDITIONS INSIDE DOUBLE SQUARE BRACKETS
        # double square brackets provides more functionalyity for comparisions and all.

        if [[ "rohan" = roha[an] ]]  # checks whether the last letter of str 'rohan' contains 'a' or 'n'
        if [[ "abc" > "bcd" ]]       # compares w.r.t their order. i.e., 'a' comes before 'b' so a = 1 and b = 2, so abc < bcd; ==> false


    LOGICAL AND (&&) and OR (||) OPERATOR

        if [ condition1 ] && [ condition2 ]  # don't forget to give spaces here as well
        if [ condition1 ] || [ condition2 ]

        Incase of double brackets
        if [[ condition1 && condition2 ]]  # you can directly compare them without having to write in separate bracket
        if [[ condition1 || condition2 ]] 
    
    CONDITIONAL OPERATORS FOR CHECKING FILES TOO
        [ -e FILE ]   # if file exists
        [ -d FILE ]   # if file exists and is a directory
        [ -s FILE ]   # if file exists and has size greater than 0
        [ -x FILE ]   # if file is executable
        [ -w FILE ]   # if file is writable


    # HERE ARE SOME EXAMPLES OF USING CONDITIONAL OPERATORS

    a=10
    b=23

    if [ $a -gt $b ]    
    then
            echo "a is greater than b"
    elif [ $a -lt $b ]
    then
            echo "b is greater than a"
    else
            echo "a is equal to b"
    fi

    # checking / comparing strings in bash using conditional statement

    if [ "rohan" = "khatri" ]
    then
            echo "no they are different"
    elif [ "rohan" = "rohan" ]
    then
            echo "rohan = rohan ofcourse"
    fi

    # using [[ ]] for conditional statement
    # eg 1
    if [[ "rohan" = *han* ]] #true
    then
            echo "rohan contains han"
    fi

    # eg 2
    if [[ "rohan" = roha[na] ]]
    then
            echo "yes last character contains n"
    else
            echo "no it does not"
    fi

    # eg 3
    if [[ "abc" > "bcd" ]]
    then
            echo "bcd comes after abc so, orderly abc < bcd: false"
    elif [[ "abc" < "bcd" ]]
    then
            echo "oviously bcd is greater"
    fi


    # eg 4
    if [ $a -gt $b ] && [ "rohan" = "rohan"]
    then
            echo "a is greater as well as rohan = rohan"
    else
            echo "one of them is wrong"
    fi


    # eg 5
    if [ $a -lt $b ] || [ "rohan" = "khatri" ]
    then
            echo "a is less than b i dont care about others because i am OR"
    else
            echo "none of them is true"
    fi