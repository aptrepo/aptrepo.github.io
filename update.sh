dpkg-scanpackages -m ./debs > Packages
rm Packages{.xz,.gz,.bz2,.zst}
gzip -c9 Packages > Packages.gz
xz -c9 Packages > Packages.xz
zstd -c19 Packages > Packages.zst
bzip2 -c9 Packages > Packages.bz2
echo "Done updating packages!"
