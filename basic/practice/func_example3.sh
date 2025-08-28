#!/bin/bash

# Print Group Info(Groupname, GID, Members)
# Only output groups with a GID of 1000 or higher.

print_group() {
    while IFS=':' read -r GROUP_NAME _ GROUP_ID MEMBERS; do
        if [[ $GROUP_ID -ge 1000 ]]; then
            [[ -z $MEMBERS ]] && MEMBERS="None"
            printf "Group: %-15s GID: %-10s Members: %s\n" $GROUP_NAME $GROUP_ID $MEMBERS
        fi
    done < /etc/group
}
print_group