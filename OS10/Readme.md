# Bash language

For conditionals use below syntax:

      if [ $1 -gt 17 ]
      then
      echo "You may go to the party."
      fi
      
Loops are useful for doing a single job on multiple files:

      for i in {1..100}
       do
         mkdir user$i
       done
       
 Parameters can be assigned in order to take control of a directory, input and so on:
 
      cd $1
