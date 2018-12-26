```sh
pwd #print current directory
clear
var="Hello"
echo $var

echo ${array0[0]}
  # => "one"
echo ${array0[@]}  # => "one two three four five six"
echo ${#array0[@]} # => "6"
for i in "${array0[@]}"; do
    echo "$i"
done

if [ $Name != $USER ]
then
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

while sleep 1; do echo "Hi"; done

echo {a..z} # => a b c d ... z

$? #return value

mv /path/to/source /path/to/destination #remove and/or rename
mkdir <dirname> # creater folder / directory

#access
ls -l 
chmod 700 soubor.txt # ugo = user group others
chmod -R 700 <file> # change all in dir
0 	---
1 	--x
2 	-w-
3 	-wx
4 	r--
5 	r-x
6 	rw-
7 	rwx


| #(pipe)

> #redirect rewrite
>> #redirect append
2> #error stream

sleep 2 & #na pozadí
sleep 2 && echo "Wake up" #chaining commands (equals ;)
sleep 2 || echo "Wake up" #equals except:

cat file.txt file2.tx ...
tail -n 10 file.txt
head -n 10 file.txt
sort file.txt

grep "re" file.txt
	-v # negace
	-n #line numbers
	-e #add next expresion as or
	| grep <exp2> #add next expression as and
	-f file #or
	-P #perl re extension
	grep "owasp" ~/texty/
	-mn #interupt after n apperance
	-C (--context)
	-A (--after-context)
	-B (--before-context)
	-r #recursive


less [swiče] [soubory] #zobrazí na jednu stránku
	q #exit
	/[re]
	page down/up
	space #next page

sudo visudo
<username> ALL=(ALL) ALL   # Change the user name before you issue the commands

curl host
	-i #include HTTP header
	-I --head
	-L #follow redirections


gcc
	sudo apt install build-essential

#TRACK TERMINAL
cat .bashrc
CMDLOG=cmdlog
export PS1='\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]`$CMDLOG`'"$IS_SCRIPT"'[\t] \u@\h:\w\$ '
function cmdlog() {
    ERRNO=$?
    DATE=`date +%y/%m/%d-%H:%M:%S`
    MYPWD=`pwd`
    CMD=`history 1|sed 's/^ *[0-9][0-9]* *//'`
    echo "$DATE$MYPWD[$ERRNO]\$ $CMD" >> $HOME/.cmdlogt
}


alias py=python3

ps aux | less # shows processes

#APT
apt-get update
openssh-server openssh-client #putty

#OPENBOX
https://wiki.debian.org/Openbox # doplnky
apt-get install openbox xorg
nano ~/.xinitrc
	#!/bin/bash
	exec openbox-session
startx

curl "http://ubuntuforums.org/showthread.php?t=192106" # customize

#SUSE
sudo /sbin/OCICLI http://software.opensuse.org/ymp/openSUSE:Leap:42.1/standard/python3-base.ymp
sudo /sbin/OCICLI http://example.com/link.ymp
zypper install python3

#PYTHON
sudo apt-get install python-pip
pip install ptpython

#COMPRESSION
unzip <filename>
bzip2 -d <filename> #decompress and remove
bzip2 -dk <filename> #decompress only
tar -xjvf file.tar.bz2
tar -xzvf file.tar.gz

#PHANTOMJS
sudo apt-get install nodejs npm phantomjs fontconfig
sudo pip3 install selenium
export QT_QPA_PLATFORM=offscreen #some selenium bug
#and other
apt install nodejs-legacy # just an alias node/nodejs to make npm install work
apt purge phantomjs       # optionaly
npm install -g phantomjs
https://stackoverflow.com/questions/36314771/how-to-install-phantomjs-for-use-with-python-selenium-on-the-raspberry-pi
cd /tmp
wget https://github.com/aeberhardo/phantomjs-linux-armv6l/archive/master.zip
unzip master.zip
cd phantomjs-linux-armv6l-master
bzip2 *.bz2 && tar xf *.tar
sudo cp phantomjs-1.9.0-linux-armv6l/bin/phantomjs  /usr/bin

ln -s /folderorfile/link/will/point/to /name/of/the/link # add symbolic link
watch -n 60 ls -l /home/agi/Desktop
for n in {1..5}; do echo "I WILL NOT SKATEBOARD IN THE HALLS"; done

history # to see entered commands
HISTTIMEFORMAT="%d/%m/%y %T " # to show time within history
#make it pernament
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bashrc
source ~/.bashrc

find <dir> -name <expression>

getent passwd | cut -d':' -f1 # get user list
runuser -l  userNameHere -c 'command' # run command as another user
df -h # disk space
```
