#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/recovery:25165824:5fb4d252b940a51128de9ad60d2d1f5baa7b705b; then
  applypatch  EMMC:/dev/block/boot:16777216:be1633cbae8f85113d7512a27c57b3679853498e EMMC:/dev/block/recovery 5fb4d252b940a51128de9ad60d2d1f5baa7b705b 25165824 be1633cbae8f85113d7512a27c57b3679853498e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
