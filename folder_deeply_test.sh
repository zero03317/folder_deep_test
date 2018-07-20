#/bin/bash
echo "how much file layer u want"
read count
echo "your share folder path?(example : /share/fs1)"
read share_path
echo "how much folder in each subfolder ?"
read subfolder_number
for i in `seq 1 1 $count`;
do
if [ $i -eq 1 ];
then
echo -n $i >> /root/number.txt
else

echo -n /$i >> /root/number.txt
fi
done
folder=$(cat /root/number.txt)
cd $share_path
mkdir -p "$folder"
rm /root/number.txt


############################################

for i in $(find $share_path/1);
do
echo $i
for a in `seq 1 1 $subfolder_number`;
do
dd if=/dev/zero of=$i/test$a bs=10K count=1;


done
done
