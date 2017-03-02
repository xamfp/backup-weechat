filename=$(python -c "import uuid; print str(uuid.uuid4())[:15].replace('-', '')")
DIR=$(pwd)
cd ~
tar -zcf $DIR/weechat-$filename.tar.gz .weechat/
cd $DIR
curl --upload-file weechat-$filename.tar.gz https://transfer.sh/weechat-$filename.tar.gz
rm -rf weechat-$filename.tar.gz
