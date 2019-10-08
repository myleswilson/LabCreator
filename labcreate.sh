#!/bin/bash
# Creator: Myles Wilson
# Last Update: 10/08/2019
# 
# Description:
# This shell script helps simplify creating
# C++ lab files. It creates the course folder,
# bash compiling script, and finally puts the
# user in a vim .cpp file named after the lab.


# \/\/ Enter the course name here! \/\/
course=

program () {

        echo REMEMBER TO CONFIGURE COURSE NAME!
        echo Enter the name of the lab:

        read LabName

	mkdir $course
        mkdir $course/$LabName

        echo -e "\nCreated folder."

        cd $course/$LabName

        echo Creating C++ compiling program...

        echo -e "#!/bin/bash\n\ng++ -std=c++11 -o $LabName $LabName.cpp" > run_comp
        chmod 700 run_comp

        echo -e "Creating C++ file... and entering vim. REMEMBER TO SAVE!\n"
        echo File structure is:
        pwd
        echo Press any key to continue.

        read useless

        vim $LabName.cpp

}

program
