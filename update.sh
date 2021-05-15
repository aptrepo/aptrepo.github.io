dpkg-scanpackages -m ./debs > Packages
rm Packages.bz2
bzip2 Packages

git add -A && git commit -m "updated packages with update.sh" && git push
