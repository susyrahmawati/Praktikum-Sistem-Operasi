#!/bin/bash
echo "========Program Tempat Duduk=========="
echo "Pilihan 1 atau 2 ?"
select pilihan in "Menu utama" "Exit program"
do
        case $pilihan in
        "Menu utama")
        echo -n "Masukkan inputan:"
        read masuk;

for ((angka=1 ; angka<=$masuk; angka=angka+1))
        do
        a=5
        b=2
                if [[ $angka%$a  -eq 0 ]]
                then
                         printf "kode- $angka Khusus\n"
                elif [[ $angka%$b -eq 0 ]]
                then
                         printf "kode-  $angka Genap "
                else
                        printf "kode- $angka Ganjil "
                fi
        done
        ;;
"Exit program")
        break
        ;;
*)echo "tidak ada dalam program"
;;
esac
done;

