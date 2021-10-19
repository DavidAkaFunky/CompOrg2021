OUTPUT="output"

usize=(1024 512 256)
ubsize=(8 16 32 64)

mkdir ${OUTPUT}

for u in ${usize}; do
    for ub in ${ubsize}; do
        echo $u $ub
        ../d4-7/dineroIV -l1-usize $u -l1-ubsize $ub < trace.log > ${OUTPUT}/${OUTPUT}-$u-$ub.txt
    done
done