OUTPUT="output3"

ubsize=(16 32 64 128)

mkdir ${OUTPUT}

for ub in ${ubsize}; do
    echo $ub
    ../d4-7/dineroIV -l1-usize 1024 -l1-ubsize 16 -l1-uassoc 4 -l2-usize 16384 -l2-ubsize $ub < trace.log > ${OUTPUT}/${OUTPUT}-$ub.txt
done
