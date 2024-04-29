LET'S LEARN ABOUT WHILE LOOP

    While loops are used when we don't know, how many times should the certain code run.

    Use While Loop when you have to:
        1) execute a command or set of command but you are not sure how many times
        2) execute a set of command until specific conditions are met.
        3) create infinite loops


    SYNTAX:

        while [ condition ]
        do
            command
            condition ( true | false ) ?
        done


    # Some examples of using while loops
        to_number=$1
        number=0
        while [ $number -lt $to_number ]
        do
            echo $(( number++ ))
        done

    # MENU DRIVEN EXAMPLE

        while true
        do
                echo "1. Add"
                echo "2. Subract"
                echo "3. Multiply"
                echo "4. Divide"
                echo "5. Quit"

                read -p "Enter your choice: " choice

                if [ $choice -eq 1 ]
                then
                        read -p "Enter Number1: " number1
                        read -p "Enter Number2: " number2
                        echo Answer=$(( $number1 + $number2))
                elif [ $choice -eq 2 ]
                then
                        read -p "Enter Number1: " number1
                        read -p "Enter Number2: " number2
                        echo Answer=$(( $number1 - $number2 ))
                elif [ $choice -eq 3 ]
                then
                        read -p "Enter Number1: " number1
                        read -p "Enter Number2: " number2
                        echo Answer=$(( $number1 *  $number2 ))
                elif [ $choice -eq 4 ]
                then
                        read -p "Enter Number1: " number1
                        read -p "Enter Number2: " number2
                        echo Answer=$(( $number1 / $number2))
                elif [ $choice -eq 5 ]
                then
                        break
                fi
        done
