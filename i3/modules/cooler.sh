
#!/bin/bash

BAT=$(asusctl profile -p | awk '{print $4}')


echo "[ $BAT]" 
