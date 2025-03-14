#!/bin/bash

useradd $USER
echo -e "$PASS\n$PASS" | passwd $USER

echo -e "$PASS\n$PASS" | smbpasswd -s -a $USER

exec smbd --foreground --no-process-group
