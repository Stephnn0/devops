rwx (read, write, execute) = 4 + 2 + 1 = 7
rw- (read, write) = 4 + 2 + 0 = 6
r-- (read) = 4 + 0 + 0 = 4
--- (no permissions) = 0

rwxrwxrwx (full permissions for everyone): 777
rwxr-xr-x (full permissions for owner, read & execute for group and others): 755
rw-r--r-- (read and write for owner, read for group and others): 644
rwx------ (full permissions for owner, none for group and others): 700
r--r--r-- (read only for everyone): 444
