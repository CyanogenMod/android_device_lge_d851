#!/sbin/sh
# 
# /system/addon.d/80-quickremote.sh
# During a upgrade, this script backs up all QuickRemote files,
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/LGQRemote/LGQRemote.apk
app/QuicksetSDK/QuicksetSDK.apk
etc/init.d/10QuickRemote
media/audio/ui/IR_normal.ogg
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
