#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/recovery:25165824:351d2214e18f964d134031282558d15eed0b4306; then
  applypatch  EMMC:/dev/block/boot:16777216:0b636ea723e0b70be7edf42ae057c7277ca2c82b EMMC:/dev/block/recovery 351d2214e18f964d134031282558d15eed0b4306 25165824 0b636ea723e0b70be7edf42ae057c7277ca2c82b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
