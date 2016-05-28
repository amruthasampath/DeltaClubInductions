//SYSTEM ADMINISTRATION TASK 1

//To create a directory
mkdir My_Dir

//To change directory
cd My_Dir

//To create 100 files inside the directory
touch file{1..100}.txt

//To set the size of file to 20kb and date as two days ago
for x in {1..100};
do
dd if=/dev/zero of=./file$x.txt bs=1024 count=10;
touch -d"two days ago" ./file$x.txt;
done


//To enable file to have random string of 16 characters
charSet="[alnum]"
for x in{1..100};
do
cat /dev/urandom|tr -cd '$charSet'|fold -w 16|head -n 1>./file$x.txt;
done

//To have the files in the read only mode
for x in{1..100};
do
chmod 444./file$x.txt;
done