
FUNCTIONS IN SHELL SCRIPTING ARE PRETTY MUCH SIMILAR TO THAT IN OTHER PROGRAMMING LANGUAGES

SYNTAX: 
        # function definition
        function function_name () {

            // your code here
            // use return code instead of exit code inside the function 
        }

        # function call
        function_name argument/parameters

    WHEN SHOULD YOU USE FUNCTIONS ?
        
        1) break up large scripts that perform many different tasks:
            i) installing packages
            ii) adding users
            iii) configuring firewalls
            iv) performing mathematical calculations


    We can save the output of the function in the following way:

                    function add () {
                        echo $(( $1 + $2 ))
                    }

                    # simply calling the function without storing the result
                    add 23 12 

                    # calling the function while storing the result in sum variable
                    sum=$( add 23 21 ) 

                    NOTE : remember the $1 and $2 are command line arguments that are simply passed as an argument while calling the      function.



    We can also do it by using ' return expression ' in the following way

                    function add () {
                        return $(( $1 + $2 ))
                    }
                    
                    add 2 3
                    sum=$?     
                    $? ==> returns the exit code of the particular program after the run

                    Note: But unlike other programming language, in shell scripting the return statement in function just returns the exit code/ return code not the actual value.

                    eg: echo $sum ==> 101
 