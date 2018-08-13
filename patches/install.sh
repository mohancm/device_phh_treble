echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build/make external/selinux frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/bt system/core system/libvintf system/netd system/vold"
#dirs="external/selinux"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/phh/treble/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
