#!/bin/bash

# Last amended: 3rd July, 2025

#------ Steps ---------
#     i) Download this file in Ubuntu, and
#        execute the three commands:


#            wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script0.sh
#            perl -pi -e 's/\r\n/\n/g' /home/moumita/script0.sh
#            chmod +x *.sh

#     ii) Then, execute this file as:
#           ./script0.sh
#        OR,as
#            bash script0.sh
#     iii) This file will call script1.sh also
#          to change hostname to 'master'

#------ Steps ---------

echo "========script0=============="
echo "Hostname is irrelevant "
echo "User name must be 'ashok'"
echo "Will check these."
echo "Will download all scripts and place them in the 'next' folder"
echo "Any scripts executed will be placed in 'done' folder"
echo "Will call script1.sh"
echo "==========================="
sleep 10

cd ~/

# Check user and hostnames
#if [[ `hostname` != 'master' ]]; then
#    echo "First change host name to 'master'"   |  tee -a /home/moumita/error.log
#    sleep 9
#    exit
#fi

if [[ $USER != 'ashok' ]]; then
    echo "First change user name to 'ashok'"   |  tee -a /home/moumita/error.log
    sleep 9
    exit
fi



echo " "                   | tee -a /home/moumita/error.log
echo "*********"           | tee -a /home/moumita/error.log
echo "Script: script0.sh"  | tee -a /home/moumita/error.log
echo "**********"          | tee -a /home/moumita/error.log
echo " "                   | tee -a /home/moumita/error.log



mkdir /home/moumita/done
echo "Downloading all script files from github" 
echo "---------------------------"
echo "  "
# Raw github files are downloaded
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script0.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script1.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script2.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script3.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script4.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/ubuntu_docker1.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/ubuntu_docker2.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script5.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script6.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script7.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script8.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script9.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/script10.sh -P /home/moumita/next

wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/download_models.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/test_llama_cpp_python.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/test_scripts.sh -P /home/moumita/next
wget -c https://raw.githubusercontent.com/harnalashok/LLMs/refs/heads/main/install_ai_tools/neo4jInstall.sh -P /home/moumita/next



echo "  "
echo "Script files downloaded....."


# Doc to Unix conversion
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script0.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script1.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script2.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script3.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/ubuntu_docker1.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/ubuntu_docker2.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script4.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script5.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script6.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script7.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script8.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script9.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/script10.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/neo4jInstall.sh

perl -pi -e 's/\r\n/\n/g' /home/moumita/next/download_models.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/test_llama_cpp_python.sh
perl -pi -e 's/\r\n/\n/g' /home/moumita/next/test_scripts.sh

# The script gives lists of virtual venvs created
echo '#!/bin/bash'                         >   /home/moumita/find_venv.sh
echo " "                                   >>   /home/moumita/find_venv.sh
echo "cd ~/"                               >>   /home/moumita/find_venv.sh
echo "echo 'List of virtual envs:'"        >>   /home/moumita/find_venv.sh
echo "echo '=========='"        >>   /home/moumita/find_venv.sh
echo "echo 'Activate any virtual env as:'"        >>   /home/moumita/find_venv.sh
echo "echo '    source <address>'"            >>   /home/moumita/find_venv.sh
echo "echo '    Example: source /home/moumita/langchain/bin/activate'"        >>   /home/moumita/find_venv.sh
echo "echo 'Deactivate as:'"        >>   /home/moumita/find_venv.sh
echo "echo '    deactivate'"        >>   /home/moumita/find_venv.sh
echo "echo '=========='"        >>   /home/moumita/find_venv.sh
echo "find ~ | grep -E '/bin/activate$'"   >> /home/moumita/find_venv.sh

chmod +x *.sh
chmod +x /home/moumita/next/*.sh



# Move script file to 'done' folder
mv /home/moumita/script0.sh  /home/moumita/done
# Bring in the next file
mv  /home/moumita/next/script1.sh  /home/moumita/


# Execute the bnext script
bash script1.sh


