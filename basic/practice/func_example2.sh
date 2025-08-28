#!/bin/bash

# Write a function that prints only the usernames and home directories of users
# whose UID is equal or greater than 1000 from the /etc/passwd file.

# sol1
list_users() {
    awk -F ':' '$3>=1000 {printf "username: %s, home_dir: %s\n", $1, $6}' /etc/passwd
}
list_users
echo

# sol2
list_users2() {
    while read -r line; do
        USER_UID=$(echo $line | awk -F ':' '{print $3}')

        if [[ $USER_UID -ge 1000 ]]; then
            USERNAME=$(echo $line | awk -F ':' '{print $1}')
            HOME_DIR=$(echo $line | awk -F ':' '{print $6}')
            echo "username: $USERNAME, home_dir: $HOME_DIR"
        fi
    done < /etc/passwd
}
list_users2
echo

# sol3
list_users3() {
    while IFS=':' read -r USERNAME _ USER_ID _ _ HOME_DIR _ ; do
        if [[ $USER_ID -ge 1000 ]]; then
            printf "Username: %-15s UID: %-10s HomeDir: %s\n" $USERNAME $USER_ID $HOME_DIR
        fi
    done < /etc/passwd
}
list_users3