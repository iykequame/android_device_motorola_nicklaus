for var in eng user userdebug; do
  add_lunch_combo lineage_nicklaus-$var
done

# Patches
cd ../../..
cd frameworks/av
git reset --hard && git clean -f -d
cd ../..
cd frameworks/base
git reset --hard && git clean -f -d
cd ../..
cd frameworks/av
patch -p1 < ../../device/motorola/nicklaus/patches/frameworks_av.diff
cd ../..
cd frameworks/base
patch -p1 < ../../device/motorola/nicklaus/patches/frameworks_base.diff
cd ../..
