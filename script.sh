#!/bin/bash

//Prompts user to select host type
echo Please Select Host Type:

//Different types of hosts flash instructions via DCOpile. Can be edited
OPTIONS="Foxconn_KANHA13 Foxconn_BARKLEY14"
           select opt in $OPTIONS; do
                if [ "$opt" = "Foxconn_KANHA13" ]; then
                
		          cd /tmp
      		          wget --no-check-certificate https://firmware.corp.amazon.com/fw/firmware/FOXCONN_KANHA13_BIOS-D11F111C-BMC-0.17_v3.5.tar.gz
	 	          tar xzvf FOXCONN_KANHA13_BIOS-D11F111C-BMC-0.17_v3.5.tar.gz
		          cd /tmp/FOXCONN_KANHA13_BIOS-D11F111C-BMC-0.17_v3.5
		          bash ./update_all.sh
                exit

                elif [ "$opt" = "Foxconn_BARKLEY14" ]; then
                
		           cd /tmp
               		   wget --no-check-certificate https://firmware.corp.amazon.com/fw/firmware/FOXCONN_BARKLEY14_v1.3.tar.gz
                	   tar xzvf FOXCONN_BARKLEY14_v1.3.tar.gz
                	   cd /tmp/FOXCONN_BARKLEY14_v1.3
                           bash ./update_all.sh
                exit
		
//if valid option is not selected, user will be prompted to make selection again              
	  	else
                  
                	clear
                	echo Please Select Host Type:
                	echo '2)Foxconn_KANHA13'
             	   	echo '1)Foxconn_BARKLEY14'
                
                fi
           done
