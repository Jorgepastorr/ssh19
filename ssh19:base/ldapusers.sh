#!/bin/bash

# llistaUsers="pere marta anna pau pere jordi"
# for user in $llistaUsers
# do
#   #echo -e "$user\n$user" | smbpasswd -a $user
  
#   line=$(getent passwd $user)
#   uid=$(echo $line | cut -d: -f3)
#   gid=$(echo $line | cut -d: -f4)
#   homedir=$(echo $line | cut -d: -f6)

#   echo "$user $uid $gid $homedir"
#   if [ ! -d $homedir ]; then
#     mkdir -p $homedir
#     cp -ra /etc/skel/. $homedir
#     chown -R $uid.$gid $homedir
#   fi
# done


# usuarios ldap 
for num in {01..08}
do 
    #echo -e "jupiter\njupiter" | smbpasswd -a user$num 

    liniaget=$( getent passwd user$num )
    uid=$( echo $liniaget | cut -d: -f 3 )
    gid=$( echo $liniaget | cut -d: -f 4 )
    homedir=$( echo $liniaget | cut -d: -f 6 )

    if [ ! -d $homedir ];then
        mkdir -p $homedir
        cp -ra /etc/skel/. $homedir
        chown -R $uid:$gid $homedir
    fi

done
