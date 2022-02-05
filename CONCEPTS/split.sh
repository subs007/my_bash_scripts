# split {options} {file_name} {prefix}

# As the name suggests ‘split‘ command is used to split or break a file into the pieces in Linux and UNIX
# systems. Whenever we split a large file with split command then split output file’s default size is 1000 lines and its default prefix would be ‘x’.

1. normal split
split tuxlap.txt

# slits into xaa , xbb

================================

2. split with verbose


split tuxlap.txt --verbose

===============================

3. customiaed line number split

split -l200 tuxlap.txt --verbose

=====================================

4.  Split files with file size using option  -b

# split  -b{bytes}  {file_name}

# split  -b  nK      {file_name}    // n is the numeric value

# split  -b   nM    {file_name}      // n is the numeric value

split -b2000000 tuxlap.txt
split -b 50K tuxlap.txt
split -b 50M tuxlap.txt
split -b 1G tuxlap.txt
========================================

5.Create Split files with numeric suffix instead of alphabetic (-d)

# like x01 , x02 instead of xaa , xbb

split -d tuxlap.txt

======================================

6. Split file with Customize Suffix

# split  {file_name}  {prefix_name}

split tuxlap.txt split_file_

-rw-r--r--. 1 root root      11998 Nov 11 04:56 split_file_aa
-rw-r--r--. 1 root root      12000 Nov 11 04:56 split_file_ab
-rw-r--r--. 1 root root      12000 Nov 11 04:56 split_file_ac
-rw-r--r--. 1 root root      12000 Nov 11 04:56 split_file_ad

# additoncal suffix like .json
split -l300 –additional-suffix=.json abc.json abc_splited_
# additional suffix
split xaa -d split_file_ --additional-suffix=.json --verbose
creating file ‘split_file_00.json’

==========================================

7. Generate n chunks output files with split command (-n)

split -n5 linux-lite.iso
# here 5 chunks created
==============================

8. Prevent Zero Size Split output files with option (-e)

split -n60 -e tuxlap.txt

================================

9. Create Split output files of customize suffix length (-a option)

split -b 500M linux-lite.iso -a 3

[root@linuxtechi ~]# ll
total 2048124
-rw-------. 1 root root        980 Aug 12 00:11 anaconda-ks.cfg
-rwx------. 1 root root 1048576000 Nov 11 03:54 linux-lite.iso
-rw-r--r--. 1 root root     120010 Nov 11 04:39 tuxlap.txt
-rw-r--r--. 1 root root  524288000 Nov 11 05:43 xaaa
-rw-r--r--. 1 root root  524288000 Nov 11 05:43 xaab

=============================

10. Split ISO file and merge it into a single file.

split -b 800M Windows2012r2.iso Split_IS0_

# Now scp these files to remote server and merge these files into a single using cat command

cat Split_IS0_a* > Windows_Server.iso
=================================

11. Verify the Integrity of Merge file using md5sum utility

md5sum Windows2012r2.iso

[root@linuxtechi ~]# md5sum Windows2012r2.iso
5b5e08c490ad16b59b1d9fab0def883a  Windows2012r2.iso
[root@linuxtechi ~]#

[root@linuxtechi ~]# md5sum Windows_Server.iso
5b5e08c490ad16b59b1d9fab0def883a  Windows_Server.iso
[root@linuxtechi ~]#

========================================

