# users
sudo adduser username
sudo usermod -aG groupname username
sudo passwd username
chmod 755 filename

# compression
gzip filename
gunzip filename.gz

zip archive.zip folder OR file1 file2
unzip archive.zip

# process management
kill PID
pkill processname

# logs
journalctl -b
journalctl -f

# file system
sudo mount /dev/sda1 /mnt
sudo umount /mnt

lsblk # block devices
fdisk
lsof # open files
vmstat # virtual memory

# system info tools
uname -a
lshw
lscpu
lsusb
lscpi #pci

# dpkg
sudo dpkg -i 
sudo dpkg -l
sudo dpkg -r

# network
ping 
ss -tuln # ports
traceroute 
curl
ip addr
nmcli

# system monitoring
ps aux
uptime
htop

# kernel process
ps -e -o pid,comm,psr | grep '^\s*[0-9]\+\s\+k'
      2 kthreadd          6
      8 kworker/0:0H-ev   0
     14 ksoftirqd/0       0
     21 ksoftirqd/1       1
     23 kworker/1:0H-ev   1
     26 ksoftirqd/2       2
     28 kworker/2:0H-ev   2
     31 ksoftirqd/3       3
     33 kworker/3:0H-ev   3
     36 ksoftirqd/4       4
     38 kworker/4:0H-ev   4
     41 ksoftirqd/5       5
     43 kworker/5:0H-ev   5
     46 ksoftirqd/6       6
     48 kworker/6:0H-ev   6
     51 ksoftirqd/7       7
     53 kworker/7:0H-ev   7
     56 ksoftirqd/8       8
     58 kworker/8:0H-ev   8
     61 ksoftirqd/9       9
     63 kworker/9:0H-ev   9
     66 ksoftirqd/10     10
     68 kworker/10:0H-e  10
     71 ksoftirqd/11     11
     73 kworker/11:0H-e  11
     76 ksoftirqd/12     12
     78 kworker/12:0H-e  12
     81 ksoftirqd/13     13
     83 kworker/13:0H-e  13
     86 ksoftirqd/14     14
     88 kworker/14:0H-e  14
     91 ksoftirqd/15     15
     93 kworker/15:0H-e  15
    110 kdevtmpfs         3
    112 kauditd           9
    113 khungtaskd        8
    116 kcompactd0        5
    117 ksmd              2
    118 khugepaged        3
    119 kintegrityd       7
    120 kblockd           7
    125 kworker/0:1H-kb   0
    128 kswapd0           0
    135 kthrotld         14
    147 kworker/11:1-ev  11
    159 kstrp             8
    165 kworker/u33:0-h  13
    235 kworker/1:1H-kb   1
    238 kworker/8:1H-kb   8
    239 kworker/9:1H-kb   9
    240 kworker/12:1H-k  12
    241 kworker/10:1H-k  10
    242 kworker/3:1H-kb   3
    243 kworker/2:1H-kb   2
    244 kworker/13:1H-k  13
    245 kworker/5:1H-kb   5
    246 kworker/7:1H-kb   7
    247 kworker/6:1H-kb   6
    248 kworker/4:1H-kb   4
    253 kworker/11:1H-k  11
    256 kworker/14:1H-k  14
    257 kworker/15:1H-k  15
    775 kworker/u33:1-h  15
   1727 krfcommd          0
  26355 kworker/13:1-mm  13
  54105 kworker/9:0-eve   9
  54947 kworker/3:0-mm_   3
  55853 kworker/4:1-mm_   4
  57826 kworker/8:2-eve   8
  57959 kworker/5:2-mm_   5
  58029 kworker/10:1-ev  10
  63072 kworker/6:2-eve   6
  77331 kworker/7:0-mm_   7
  77793 kworker/0:1-eve   0
  80041 kworker/14:1-pm  14
  80250 kworker/12:2-ev  12
  80317 kworker/3:2-eve   3
  80324 kworker/1:1-mm_   1
  80915 kworker/8:0-mm_   8
  84111 kworker/2:3-eve   2
  84435 kworker/9:1-eve   9
  90570 kworker/12:1-mm  12
  93680 kworker/6:0       6
  94196 keepassxc-proxy   3
  95284 kworker/15:1     15
  97024 kworker/5:1-eve   5
  98517 kworker/10:0-in  10
  99344 kworker/13:0-mm  13
 101952 kworker/7:2       7
 101954 kworker/4:0       4
 102333 kworker/u32:1-p   7
 102449 kworker/1:0       1
 102453 kworker/u32:2-m   2
 102555 kworker/2:1-eve   2
 102973 kworker/15:2-ev  15
 103007 kworker/11:2     11
 103008 kworker/0:2-kac   0
 103114 kworker/14:0-ev  14
 103133 kworker/u32:4-e   0
 103237 kworker/0:0-eve   0
 103240 kworker/5:0       5
 103295 kworker/u32:0     4
