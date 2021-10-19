OUTPUT="output2"

assoc=(1 2 4 8)

mkdir ${OUTPUT}


for a in ${assoc[@]}; do
    echo "1024 8"
    ../d4-7/dineroIV -l1-usize 1024 -l1-ubsize 8  -l1-uassoc $a -l1-uccc < trace.log > ${OUTPUT}/${OUTPUT}-1024-8-$a.txt
done
for a in ${assoc[@]}; do
    echo "1024 16"
    ../d4-7/dineroIV -l1-usize 1024 -l1-ubsize 16 -l1-uassoc $a -l1-uccc < trace.log > ${OUTPUT}/${OUTPUT}-1024-16-$a.txt
done