for var in eng user userdebug; do
  add_lunch_combo lineage_nicklaus-$var
done

# Patches
cd frameworks/av
git reset --hard && git clean -f -d
cd ../..
cd frameworks/base
git reset --hard && git clean -f -d
cd ../..
cd system/netd
git reset --hard && git clean -f -d
cd ../..
cd system/core
git reset --hard && git clean -f -d
cd ../..
cd frameworks/av
patch -p1 < ../../device/motorola/nicklaus/patches/frameworks_av.diff
cd ../..
cd frameworks/base
patch -p1 < ../../device/motorola/nicklaus/patches/frameworks_base.diff
cd ../..
cd system/netd
patch -p1 < ../../device/motorola/nicklaus/patches/system_netd.diff
cd ../..
cd system/core
patch -p1 < ../../device/motorola/nicklaus/patches/system_core.diff
cd ../..

