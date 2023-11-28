echo "=============================安装依赖环境============================="
sudo apt update
sudo apt -y install build-essential asciidoc binutils bison yodl bc bzip2 gawk gettext git libncurses5-dev libz-dev patch python3.5 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget libncurses5 libelf1 lib32z1 lib32stdc++6 gtk-doc-tools intltool binutils-dev cmake lzma liblzma-dev lzma-dev uuid-dev liblzo2-dev xsltproc dos2unix libstdc++5 docbook-xsl-* sharutils autogen shtool gengetopt libltdl-dev libtool-bin
echo "=============================配置编译工具============================="
cd tools
tar xjf buildroot-gcc463_32bits.tar.bz2
sudo rm -rf /opt/brcm
sudo rm -rf /opt/buildroot-gcc463
sudo ln -s ~/MI-R3G/tools/brcm /opt/brcm
sudo ln -s ~/MI-R3G/tools/buildroot-gcc463 /opt/buildroot-gcc463
export PATH=/opt/brcm/hndtools-mipsel-linux/bin:$PATH
export PATH=/opt/brcm/hndtools-mipsel-uclibc/bin:$PATH
export PATH=/opt/buildroot-gcc463/bin:$PATH
cd ..
echo "=============================开始编译源码============================="
cd release/src-ra-5010
make RT-MIR3G