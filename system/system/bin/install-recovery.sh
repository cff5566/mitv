#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/recovery:25165824:934b0a417a1bb7a3837ce90f7103385f39065bd5; then
  applypatch  EMMC:/dev/block/boot:16777216:47f765c23670559a6817895f4ebcb8a35813dedc EMMC:/dev/block/recovery 934b0a417a1bb7a3837ce90f7103385f39065bd5 25165824 47f765c23670559a6817895f4ebcb8a35813dedc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
