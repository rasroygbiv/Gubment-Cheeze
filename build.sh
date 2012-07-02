START=$(date +%s)
export USE_CCACHE=1
. build/envsetup.sh
prebuilt/linux-x86/ccache/ccache -M 80G
brunch cm_quincyatt-eng
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
