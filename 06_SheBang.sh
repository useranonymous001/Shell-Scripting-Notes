
SHEBANG IS USED TO SPECIFY WHAT SHELL MUST THE SCRIPT RUN ON.
MEANING: 
        There are many kinds of shells in Linux systems like bash shell, zsh shell, sh shell, dash shell and so on. So, sometimes there may be some problem while running scripts written in bash to run on other shell. 
        For eg: 
                                    for $numbers in {3..100} 
                                    do 
                                        echo $numbers
                                    done

            This script won't run in dash shell. So for this SHEBANG is where is comes to use
        
        SHEBANG is a line specified at the top of the scripts. This 

        #! /bin/bash   
        ==> This specifies to always run the scripts on the bash shell '

EXIT CODE STATUS IN BASH SCRIPTING

Exit Codes in Bash is very necessary to determine the status of the script is either success or failure

    In Bash Scripting:
        Success : 0 exit code
        Failure : >0 exit code 

                                        Eg: 
                                            for numbers in {0..100}
                                            do
                                                echo $numbers
                                                if [ $numbers -eq 10 ]
                                                then
                                                    exit 0    # success 
                                                else
                                                    continue
                                                fi
                                            done

    # In this way we can specify the exit code for specific conditions....

    
