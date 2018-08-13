echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build/make external/selinux frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/bt system/core system/libvintf system/netd system/vold"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
